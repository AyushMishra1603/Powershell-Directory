#Before executing take game to the check point 

Function FarmForYourLife($gamePlayTime, $launchUsing){

  $game_title = "FarmForYourLife"
  $game_title_hub = "Farm For Your Life"
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
                $str = "launch " + $game_title 
                VoiceTrigger -VoiceText $str                
                $gameSelected= $true
                
                }

            #Launch Using Search
            if($launchUsing -eq "Search"){
                $gameSelected = Launch_GameUsingSearch -game_name "m Fo"                
                }

            #temporary Workaround for testing
            if($launchUsing -eq "Test"){
                ConsoleOne_CtrllerEnter
                $gameSelected= $true
                }


            if($gameSelected -eq $true){  
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Step1>' -replacewithtext "Success"
              #  Start-Sleep -Seconds 2                
                $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 0 "Launch + "$game_title + " Using " + $launchUsing
                $testDescriptionFail = "Unable to select Game" + $game_title                  
            }              
          }

        2{<#Check for Game Pass Badge 
          $Global:ElapsedTime = 10
            $UpdateScreenFound = Pattern_Verification -CapturedImage "FarmForYourLife_Badge" -IconImage "FarmForYourLife_Badge" 
            if($UpdateScreenFound -eq $true){
               
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Step2>' -replacewithtext "Success"
            }
            else
            {
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Step2>' -replacewithtext "NO Game Pass badge Found"
            }#>
            #Check for Game Title Updates
            $Global:ElapsedTime = 30
            $UpdateScreenFound = Pattern_Verification -CapturedImage "UpdateScreenVerify" -IconImage "UpdateScreenVerify" 
            if($UpdateScreenFound -eq $true){
                ConsoleOne_CtrllerEnter
                Write-Host "$game_title - Game update" -ForegroundColor Yellow
                $case_cnt = 20
                $testDescriptionFail = "Update found for game" + $game_title 
                $tc_status = $false
                $GameUpdateFound = $true
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Update>' -replacewithtext "FarmForYourLife update triggered"
            }
            else
            {
                $case_cnt++
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Update>' -replacewithtext "No Update found"
            }                    
         }   
        3{
            #Default settings
            Start-Sleep -Seconds 35
            ConsoleOne_CtrllerEnter  
            $Global:ElapsedTime = 60
            #Verify that if we have landed on Choose your experience
            $isChooseAceCampaignScreen = Pattern_Verification -CapturedImage "FarmForYourLife_MenuScreen" -IconImage "FarmForYourLife_MenuScreen"

            if($isChooseAceCampaignScreen -eq $true){
                
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerUp
                ConsoleOne_CtrllerEnter
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Step2>' -replacewithtext "Success"
                $case_cnt ++ 
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to select the default settings for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Step2>' -replacewithtext $testDescriptionFail
            }           
         }     
         
         4{        
            #Verify we are in game play
            $Global:ElapsedTime = 420
            #Verify that if we have landed on Choose your experience
            $isChooseExpScreen = Pattern_Verification -CapturedImage "FarmForYourLife_GamePlay" -IconImage "FarmForYourLife_GamePlay"
            
            if($isChooseExpScreen -eq $true){
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Step3>' -replacewithtext "Success"
                Start-Sleep -Seconds 1
                while ($counter -lt $gamePlayTime)
                {
                    #Play inside game for some time
                    
                    MoveLeftJoystick_Up -waittime 1000
                    Start-Sleep -Seconds 2
                    ReleaseController -HoldedButton $JoyStick1_UD
                    Start-Sleep -Seconds 2
                    MoveLeftJoystick_Down -waittime 1000
                    Start-Sleep -Seconds 2
                    ReleaseController -HoldedButton $JoyStick1_UD
                     Start-Sleep -Seconds 2
                                     
                    $counter = $counter + 12
                }
                $case_cnt ++               
                }

            else
            {              
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to select the Gameplay for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Step3>' -replacewithtext $testDescriptionFail
            }                 
         }            
      

        5{
            #Quit the game
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once          
            if($isGameQuit -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                $testDescriptionPass = "Success"   
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Step4>' -replacewithtext "Success"            
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                $testDescriptionFail = "Unable to Quit GAME " + $game_title 
                Debug_Info 5 "Unable to Exit Game"   
                ReplaceTag –Document $Doc -FindText '<FarmForYourLife_Step4>' -replacewithtext $testDescriptionFail               
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

