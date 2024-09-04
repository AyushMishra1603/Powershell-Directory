Function NeverAlone_RestoreFromCS($launchUsing){

  $game_title = "NeverAlone_RestoreFromCS"
  $game_title_hub= "NeverAlone_RestoreFromCS"
  $testDescriptionPass = ""
  $testDescriptionFail = ""  
  $tc_status = $false
  $loop_status = $true
  $case_cnt = 1
  $Global:ElapsedTime = 10 
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
                $gameSelected = Launch_GameUsingSearch -game_name "Never"                
                }

            #temporary Workaround for testing
            if($launchUsing -eq "Test"){
                ConsoleOne_CtrllerEnter
                $gameSelected= $true
                }


            if($gameSelected -eq $true){  
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step1>' -replacewithtext "Success"
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

        2{#Check for Game Pass Badge 
          $Global:ElapsedTime = 10
            $UpdateScreenFound = Pattern_Verification -CapturedImage "NeverAlone_Badge" -IconImage "NeverAlone_Badge" 
            if($UpdateScreenFound -eq $true){
               
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step2>' -replacewithtext "Success"
            }
            else
            {
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step2>' -replacewithtext "NO Game Pass badge Found"
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
                ReplaceTag –Document $Doc -FindText '<NeverAlone_Update>' -replacewithtext "NeverAlone update triggered"
            }
            else
            {
                $case_cnt++
                ReplaceTag –Document $Doc -FindText '<NeverAlone_Update>' -replacewithtext "No Update found"
            }                    
         }   

        3{
            #Verify game has loaded, the first screen with Press Any Button           
            
            $Global:ElapsedTime = 80
            #Verify that if we have landed on Choose your experience
            $isChooseAceCampaignScreen = Pattern_Verification -CapturedImage "NeverAlone_FirstScreen" -IconImage "NeverAlone_FirstScreen"
            
            if($isChooseAceCampaignScreen -eq $true){

                Start-Sleep -Seconds 2 
                #Press Enter (A)
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 5
                
                #Handling Who Are you Screen
                #$isWhoAreYouScreen = WhoAreYouScreenHandle
                #if($isWhoAreYouScreen -eq $false){
                    
                    $case_cnt++
                    ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step3>' -replacewithtext "Success"
                } 
                 

            else
            {              
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to select the default settings for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step3>' -replacewithtext $testDescriptionFail
            }  
         } 
         
         4{
            #Default settings

            $Global:ElapsedTime = 60
            #Verify that if we have landed on Choose your experience
            $isMenuScreen = Pattern_Verification -CapturedImage "NeverAlone_MenuScreen" -IconImage "NeverAlone_MenuScreen"

            if($isMenuScreen -eq $true){
                
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 5
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 5
                ConsoleOne_CtrllerEnter                             
                
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step4>' -replacewithtext "Success"
                $case_cnt ++ 
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to select the default settings for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step4>' -replacewithtext $testDescriptionFail
            }           
         }     
         
         5{     
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 5
            ConsoleOne_CtrllerExit
            ConsoleOne_CtrllerExit
            Start-Sleep -Seconds 2
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 5
            ConsoleOne_CtrllerExit
            ConsoleOne_CtrllerExit   
            #Verify we are in game play
            $Global:ElapsedTime = 90
            #Verify that if we have landed on Choose your experience
            $isGamePlayScreen = Pattern_Verification -CapturedImage "NeverAlone_GamePlay" -IconImage "NeverAlone_GamePlay"
            
            if($isGamePlayScreen -eq $true){

                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step5>' -replacewithtext "Success"
                Start-Sleep -Seconds 5

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
                    MoveLeftJoystick_Left -waittime 1000
                     Start-Sleep -Seconds 2
                    ReleaseController -HoldedButton $JoyStick1_LR
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
                $testDescriptionFail = "Unable to select the default settings for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step5>' -replacewithtext $testDescriptionFail
            }                 
         }

       6 { #Go to Connected StandBy
            NavigateTosettings
            Start-Sleep -Seconds 2
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 2
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 2
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once 
            Start-Sleep -Seconds 1
            ConsoleOne_CtrllerPwr
            Start-Sleep -Seconds 1
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 20
            ConsoleOne_CtrllerPwr
            Start-Sleep -Seconds 6
            ConsoleOne_CtrllerEnter 
            $isHomeScreen = VerifyHomeScreen  
            $case_cnt++ 
           }
         7{   
            #Switch to Never Alone  after Console Standby and verifying that Game Resumes exactly where it was left 
            Start-Sleep -Seconds 3
             ConsoleOne_CtrllerEnter                                      
            $Global:ElapsedTime = 80
            $isNeverAloneResume = Pattern_Verification -CapturedImage "NeverAloneResume" -IconImage "NeverAloneResume"
            if($isNeverAloneResume -eq $true)
            { ConsoleOne_CtrllerEnter
              ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step7>' -replacewithtext "Success"
                $case_cnt = 10 
            }
            else
            { 
                $case_cnt++                   
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step7>' -replacewithtext $testDescriptionFail               
            }       
         } 
        8 {  
             # Switch to NeverAlone  after launching Deadcells
            #Verify game has loaded, the first screen with Press Menu Button
            $Global:ElapsedTime = 90
            $IsNeverAlonePressMenu = Pattern_Verification -CapturedImage "NeverAlone_FirstScreen" -IconImage "NeverAlone_FirstScreen"           
            if($IsNeverAlonePressMenu -eq $true)
            {     
             Start-Sleep -Seconds 2 
             #Press Enter (A)
             ConsoleOne_CtrllerEnter
             Start-Sleep -Seconds 5
            }
            #Verify user is able to reach main menu
            $Global:ElapsedTime = 80
            $isNeverAloneMenu = Pattern_Verification -CapturedImage "NeverAlone_MenuScreen" -IconImage "NeverAlone_MenuScreen"
            if($isNeverAloneMenu -eq $true)
            {
              Start-Sleep -Seconds 2
              ConsoleOne_CtrllerEnter
              Start-Sleep -Seconds 5
              ConsoleOne_CtrllerEnter
              Start-Sleep -Seconds 5
              ConsoleOne_CtrllerEnter
              ConsoleOne_CtrllerEnter
              Start-Sleep -Seconds 5
              ConsoleOne_CtrllerExit
              ConsoleOne_CtrllerExit
              Start-Sleep -Seconds 2
              ConsoleOne_CtrllerEnter
              Start-Sleep -Seconds 2
              ConsoleOne_CtrllerExit
              ConsoleOne_CtrllerExit 
              
            }
            #Verify NeverAlone's Gameplay
            $Global:ElapsedTime = 80
            $isNeverAloneGameplay = Pattern_Verification -CapturedImage "NeverAlone_Gameplay" -IconImage "NeverAlone_Gameplay"
            if($isNeverAloneGameplay -eq $true)
            {
              ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step8>' -replacewithtext "Success"
              $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 9 "Unable to load NeverAlone  second time" 
                $testDescriptionFail = "Unable to find first loaded screen of NeverAlone  second time"  
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step8>' -replacewithtext $testDescriptionFail
            }
          }
         9 {
            #Quitting Never Alone 
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once          
            if($isGameQuit -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                $testDescriptionPass = "Success"   
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step9>' -replacewithtext "Success"            
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                $testDescriptionFail = "Unable to Quit GAME " + $game_title 
                Debug_Info 5 "Unable to Exit Game"   
                ReplaceTag –Document $Doc -FindText '<NeverAlone_RestoreFromCS_Step9>' -replacewithtext $testDescriptionFail               
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

