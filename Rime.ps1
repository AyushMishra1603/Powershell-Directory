Function Rime($gamePlayTime, $launchUsing){

  $game_title = "Rime"
  $game_title_hub = "Rime"
  $testDescriptionPass = ""
  $testDescriptionFail = ""  
  $tc_status = $false
  $loop_status = $true
  $case_cnt = 1
  $Global:ElapsedTime = 120  
  $GameUpdateFound = $false

  $isHomeScreen = VerifyHomeScreen      
  <# Need to see if we need to exit the game as home screen is not coming #>
  
  while($loop_status){

     switch($case_cnt){
        1 {           
           
            #Launch Game 
            #Launch Using Voice
            if($launchUsing -eq "Voice"){
                VoiceTrigger -VoiceText "launch Rime" #+ $game_title 
                $gameSelected= $true
                }

            #Launch Using Search
            if($launchUsing -eq "Search"){
                $gameSelected = Launch_RimeGameUsingSearch
                }

            #temporary Workaround for testing
            if($launchUsing -eq "Test"){
                ConsoleOne_CtrllerEnter
                $gameSelected= $true
                }


            if($gameSelected -eq $true){  
                ReplaceTag –Document $Doc -FindText '<Rime_Step1>' -replacewithtext "Success using " +$launchUsing
                Start-Sleep -Seconds 2                
                $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 0 "Launch Batman Return To Arkham City Using " + $launchUsing
                $testDescriptionFail = "Unable to select Game" + $game_title  
                ReplaceTag –Document $Doc -FindText '<DuesEx_Step1>' -replacewithtext "Failed. " + $testDescriptionFail
            }                      
          }

        2{
            #Check for Game Title Updates

            $isUpdateScreen = Pattern_Verification -CapturedImage "UpdateScreenVerify" -IconImage "UpdateScreenVerify" 
            if($isUpdateScreen -eq $true){
                ConsoleOne_CtrllerEnter
                Write-Host "$game_title - Game update" -ForegroundColor Yellow
                $case_cnt = 20
                $testDescriptionFail = "Update found for game" + $game_title 
                $tc_status = $false
                $GameUpdateFound = $true
                ReplaceTag –Document $Doc -FindText '<Rime_Step2>' -replacewithtext "Failed. " + $testDescriptionFail
            }
            else
            {
                ReplaceTag –Document $Doc -FindText '<Rime_Step2>' -replacewithtext "No Game Update found."
                $case_cnt++
            }                    
         }   

        3{
            #Verify game has loaded
            $Global:ElapsedTime = 90
            Start-Sleep -Seconds 70
           
            #Verification using Text Search
           $isPressButton = Pattern_Verification -CapturedImage "Rime_Home" -IconImage "Rime_Home"                        

            if($isPressButton -eq $true){  
                ReplaceTag –Document $Doc -FindText '<Rime_Step3>' -replacewithtext "Success"
                Start-Sleep -Seconds 2                
                $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 2 "Load_Batman"
                $testDescriptionFail = "Unable to find first loaded screen of game " + $game_title 
                ReplaceTag –Document $Doc -FindText '<Rime_Step3>' -replacewithtext "Failed. " + $testDescriptionFail
            }   
           
         }


        4{   
            #choose option to enter the game      
                      
            #$Global:ElapsedTime = 90
            
            #press A
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 3

            # press enter to select user to login
            ConsoleOne_CtrllerEnter

           Start-Sleep -Seconds 80
           $case_cnt ++

           
           
         }

        5{                        
            $Global:ElapsedTime = 120
            
            ConsoleOne_CtrllerEnter 
            Start-Sleep -Seconds 70

            
            #Verify that Empty Profile Screen has come 
            $isGamePlayButton = Pattern_Verification -CapturedImage "Rime_GamePlay" -IconImage "Rime_GamePlay"            

            if($isGamePlayButton -eq $true){
                #Move ahead with Local Play Selection
                ReplaceTag –Document $Doc -FindText '<Rime_Step5>' -replacewithtext "Success"
                $counter = 0
                #Stay in game for sometime
                while ($counter -lt $gamePlayTime)
                {                                 
                        Start-Sleep -Seconds 10
                                                                                                 
                        HoldLeftJoystick_Right -waittime 1000                
                        ReleaseController -HoldedButton $JoyStick1_LR                        

                        HoldRightJoystick_Left -waittime 1000
                        ReleaseController -HoldedButton $JoyStick2_LR

                        HoldLeftJoystick_Right -waittime 1000                
                        ReleaseController -HoldedButton $JoyStick1_LR                        

                        HoldRightJoystick_Left -waittime 1000
                        ReleaseController -HoldedButton $JoyStick2_LR

                        HoldLeftJoystick_Right -waittime 1000                
                        ReleaseController -HoldedButton $JoyStick1_LR                        

                        HoldRightJoystick_Left -waittime 1000
                        ReleaseController -HoldedButton $JoyStick2_LR

                        $counter = $counter + 15
                }
                
                $case_cnt ++
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Profile_Rime"
                $testDescriptionFail = "Unable to go to gameplay " + $game_title 
                ReplaceTag –Document $Doc -FindText '<Rime_Step5>' -replacewithtext "Failed. " + $testDescriptionFail
             }
         }        

        6{
            #Quit the game
            $ret6 = Quit_LaunchedGame_Relay -console $Global:Once          

            if($ret6 -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                $testDescriptionPass = "Success"        
                ReplaceTag –Document $Doc -FindText '<Rime_Step6>' -replacewithtext "Success"          
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                $testDescriptionFail = "Unable to Quit GAME " + $game_title 
                Debug_Info 6 "Unable to Exit Game"  
                ReplaceTag –Document $Doc -FindText '<Rime_Step6>' -replacewithtext "Failed. " + $testDescriptionFail             
            }
            
        }

        20{
            FinalizeGameStatus -game_title $game_title -game_title_hub $game_title_hub -tc_status $tc_status -GameUpdateFound $GameUpdateFound -testDescriptionFail $testDescriptionFail -testDescriptionPass $testDescriptionPass                             
            $loop_status = $false            
        }

        default{
        $loop_status = $false
        } 
     }
  }  
  return $tc_status
}

Function Launch_RimeGameUsingSearch(){
    $ret1 = NavigateToMyGamesandApps_Relay

   if($ret1 -eq $true){
        $ret2 = Navigate2SearchPage

        if($ret2 -eq $true){            
            $ret3 = EnterGameName_Rime
            return $ret3
            }
            else {
            return $false
            }
        }
        else{
        return $false
        }
}

Function EnterGameName_Rime{
    #D
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerDwn    
    ConsoleOne_CtrllerEnter

    #E
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerEnter

    #U
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerEnter

    #enter search
    ConsoleOne_CtrllerMenu
    #select game
    ConsoleOne_CtrllerEnter  
    return $true
}

