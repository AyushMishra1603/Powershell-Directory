
<# to do 
Offline mode
First screen mode on first time run
#>

Function FarmingSimulator17($gamePlayTime, $launchUsing){

  $game_title = "FarmingSimulator17"
  $game_title_hub = "Farming Simulator 17"
  $testDescriptionPass = ""
  $testDescriptionFail = ""  
  $tc_status = $false
  $loop_status = $true
  $case_cnt = 1
  $Global:ElapsedTime = 90  
  $GameUpdateFound = $false

  $isHomeScreen = VerifyHomeScreen      
  <# Need to see if we need to exit the game as home screen is not coming #>
  
  while($loop_status){

     switch($case_cnt){
        1 {          
                        
            #Launch Game 
            #Launch Using Voice
            if($launchUsing -eq "Voice"){
                VoiceTrigger -VoiceText "launch Farming Simulator 17"
                $gameSelected= $true
                }

            #Launch Using Search
            if($launchUsing -eq "Search"){
                $gameSelected = Launch_GameUsingSearch -game_name "or 17"    
                }

            #temporary Workaround for testing
            if($launchUsing -eq "Test"){
                ConsoleOne_CtrllerEnter
                $gameSelected= $true
                }


            if($gameSelected -eq $true){  
                ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step1>' -replacewithtext "Success"
                Start-Sleep -Seconds 2                
                $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 0 "Launch + "$game_title + " Using " + $launchUsing
                $testDescriptionFail = "Unable to select Game" + $game_title  
                ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step1>' -replacewithtext $testDescriptionFail
            }              
          }

        2{
            #Check for Game Title Updates
            $Global:ElapsedTime = 10
            $UpdateScreenFound = Pattern_Verification -CapturedImage "UpdateScreenVerify" -IconImage "UpdateScreenVerify" 
            if($UpdateScreenFound -eq $true){
                ConsoleOne_CtrllerEnter
                Write-Host "$game_title - Game update" -ForegroundColor Yellow
                $case_cnt = 20
                $testDescriptionFail = "Update found for game " + $game_title 
                $tc_status = $false
                $GameUpdateFound = $true
                ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step2>' -replacewithtext $testDescriptionFail
            }
            else
            {
                 ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step2>' -replacewithtext "Not Found"
                $case_cnt++
            }                    
         }   

        3{
            #Verify game has loaded, the first screen with Press A Button
            $Global:ElapsedTime = 180
            Start-Sleep -Seconds 20 
            ConsoleOne_CtrllerEnter  
            Start-Sleep -Seconds 6 
            ConsoleOne_CtrllerEnter          
            #Verification using Image Search
            $PressButtonFound = Pattern_Verification -CapturedImage "FarmingSimulator17_FirstScreen" -IconImage "FarmingSimulator17_FirstScreen"           

            if($PressButtonFound -eq $true){     
                ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step3>' -replacewithtext "Success"            
                Start-Sleep -Seconds 2                
                $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 2 "Unable to load game " + $game_title 
                $testDescriptionFail = "Unable to find first loaded screen of game " + $game_title 
                ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step3>' -replacewithtext $testDescriptionFail
            }   
           
         }


        4{   
            #choose option to enter the game                                       
            #CLick on Press A button to Start
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 2 
            
            #Handle if WhoareYou Screen appears
            $isWhoAreYouScreen = WhoAreYouScreenHandle       

            if($isWhoAreYouScreen -eq $false){
                $Global:ElapsedTime = 30
                #Verify that game select screen is present
                $isGameSelectScreen = Pattern_Verification -CapturedImage "FarmingSimulator17_MenuScreen" -IconImage "FarmingSimulator17_MenuScreen"

                if($isGameSelectScreen -eq $true){
                    
                    #Select Game                                  
                    ConsoleOne_CtrllerEnter                 
                    #Select Slot                                  
                    ConsoleOne_CtrllerEnter
                    Start-Sleep -Seconds 2    
                    #Select Difficulty
                    ConsoleOne_CtrllerEnter
                    Start-Sleep -Seconds 2 
                    #Select Map                                  
                    ConsoleOne_CtrllerEnter
                    Start-Sleep -Seconds 2 
                    #Select Character
                    ConsoleOne_CtrllerEnter
                    Start-Sleep -Seconds 5
                                          
                    $case_cnt ++  
                    ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step4>' -replacewithtext "Success"                        
                }
                else
                {              
                    $case_cnt = 20
                    $tc_status = $false
                    Debug_Info 3 "Selections " + $game_title
                    $testDescriptionFail = "Unable to select the default settings for game " + $game_title     
                    ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step4>' -replacewithtext $testDescriptionFail                             

                }                          
            } 
            else
            {
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Unable to select GamerTag for " + $game_title
                $testDescriptionFail = "Unable to select the Gamertag for game " + $game_title  
                ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step4>' -replacewithtext $testDescriptionFail   
            }
         }

        5{            
             $Global:ElapsedTime = 120               
            Start-Sleep -Seconds 20            
            
            #had to wait for final 
            $isGamePlayScreen = Pattern_Verification -CapturedImage "FarmingSimulator17_GamePlay" -IconImage "FarmingSimulator17_GamePlay"
            
            if($isGamePlayScreen -eq $true){
                
                #Start Game                                  
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 2
                #say no to tutorial
                ConsoleOne_CtrllerExit
                Start-Sleep -Seconds 2            
                #say no to tutorial
                ConsoleOne_CtrllerEnter
                ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step5>' -replacewithtext "Success"   
                $counter = 0
                #Stay in game for defined seconds
                while ($counter -lt $gamePlayTime)
                {
                    #Play inside game for some time                                                                                                                                                                                     
                    MoveLeftJoystick_Up -waittime 5000                    
                    ReleaseController -HoldedButton $JoyStick1_UD 

                    ConsoleOne_CtrllerEnter

                    MoveLeftJoystick_Down -waittime 5000                    
                    ReleaseController -HoldedButton $JoyStick1_UD

                    ConsoleOne_CtrllerEnter

                    MoveLeftJoystick_Up -waittime 5000                    
                    ReleaseController -HoldedButton $JoyStick1_UD 

                    ConsoleOne_CtrllerEnter

                    MoveLeftJoystick_Down -waittime 5000                    
                    ReleaseController -HoldedButton $JoyStick1_UD                   

                    ConsoleOne_CtrllerEnter                    
                    $counter = $counter + 30                 
                }
                $case_cnt ++
            }             
             else{                
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 5 "GamePlay " + $game_title
                $testDescriptionFail = "Unable to go to Game Play for game " + $game_title 
                ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step5>' -replacewithtext $testDescriptionFail
            }          
           
        }
      

        6{
            #Quit the game
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once          

            if($isGameQuit -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                $testDescriptionPass = "Success"  
                ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step6>' -replacewithtext "Success"                
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                $testDescriptionFail = "Unable to Quit GAME " + $game_title 
                Debug_Info 5 "Unable to Exit Game"             
                ReplaceTag –Document $Doc -FindText '<FarmingSimulator17_Step6>' -replacewithtext "Failed. " + $testDescriptionFail  
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


Function Launch_FarmingSimulator17GameUsingSearch(){
   $ret1 = NavigateToMyGamesandApps_Relay

   if($ret1 -eq $true){
        $ret2 = Navigate2SearchPage

        if($ret2 -eq $true){            
            $ret3 = EnterGameName_FarmingSimulator17
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

Function EnterGameName_FarmingSimulator17{
    #f
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    
    ConsoleOne_CtrllerEnter 
    #a
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    
    ConsoleOne_CtrllerEnter 
    #r
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht    
    ConsoleOne_CtrllerEnter   
    #m
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter       
            
    #enter search
    ConsoleOne_CtrllerMenu
    #select game
    ConsoleOne_CtrllerEnter   

    Start-Sleep -Seconds 5
    return $true
}


