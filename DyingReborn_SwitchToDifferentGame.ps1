Function DyingReborn_SwitchToDifferentGame($launchUsing,$gamePlayTime){

  $game_title = "DyingReborn_SwitchToDifferentGame"
  $game_title_hub= "Dying Reborn Switch To Different Game"
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
                $gameSelected = Launch_GameUsingSearch -game_name "Dyi"                
                }

            #temporary Workaround for testing
            if($launchUsing -eq "Test"){
                ConsoleOne_CtrllerEnter
                $gameSelected= $true
                }


            if($gameSelected -eq $true){  
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step1>' -replacewithtext "Success"
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

        2{
            #Verify game has loaded, the first screen with Press Any Button           
            $Global:ElapsedTime = 80
            #Verify that if we have landed on Choose your experience
            $isChooseAceCampaignScreen = Pattern_Verification -CapturedImage "DyingReborn_FirstScreen" -IconImage "DyingReborn_FirstScreen"
            
            if($isChooseAceCampaignScreen -eq $true){

                Start-Sleep -Seconds 2 
                #Press Enter (A)
                ConsoleOne_CtrllerEnter  
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step2>' -replacewithtext "Success" 
                    $case_cnt++
                    
                } 
                 
            else
            {              
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to find first screen for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step2>' -replacewithtext $testDescriptionFail
            } 
           } 
         
        3{
            #Default settings
            $Global:ElapsedTime = 60
            #Verify that if we have landed on Choose your experience
            $isChooseAceCampaignScreen = Pattern_Verification -CapturedImage "DyingReborn_MenuScreen" -IconImage "DyingReborn_MenuScreen"

            if($isChooseAceCampaignScreen -eq $true){
                
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerDwn
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 1
                ConsoleOne_CtrllerDwn
                ConsoleOne_CtrllerEnter
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step3>' -replacewithtext "Success"
                $case_cnt ++ 
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to select the default settings for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step3>' -replacewithtext $testDescriptionFail
            }           
         }     
         
         4{        
            #Verify we are in game play
            $Global:ElapsedTime = 90
            #Verify that if we have landed on Choose your experience
            $isChooseExpScreen = Pattern_Verification -CapturedImage "DyingReborn_GamePlay" -IconImage "DyingReborn_GamePlay"
            
            if($isChooseExpScreen -eq $true){
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step4>' -replacewithtext "Success"
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
                    Start-Sleep -Seconds 1
                                     
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
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step4>' -replacewithtext $testDescriptionFail
            }                 
         }                       

        5 { ConsoleOne_CtrllerXbox
            Start-Sleep -Seconds 2
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 2
            # Launch Another Game
            if($launchUsing -eq "Search"){
                $gameSelected = Launch_GameUsingSearch -game_name "Froz"                
                }

            if($gameSelected -eq $true)
            {  
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step5>' -replacewithtext "Success"
                Start-Sleep -Seconds 2                
                $case_cnt++
            }

            else
            {
                $case_cnt = 20
                $tc_status = $false
                $testDescriptionFail = "Unable to launch Frozen Free Fall"
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step5>' -replacewithtext $testDescriptionFail                  
            }      
          }
           
       6 { 
            #Verify that we landed on the Start Screen of Frozen Free Fall
            $Global:ElapsedTime = 90
            $IsFrozen = Pattern_Verification -CapturedImage "Frozen_PressA" -IconImage "Frozen_PressA"
            if($IsFrozen -eq $true)
            {
              ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step6>' -replacewithtext "Success"
              $case_cnt++
            }
            else
            { 
                $case_cnt = 20
                $tc_status = $false
                $testDescriptionFail = "Unable to reach to the First Screen of Frozen Free Fall"
                Debug_Info 8 "Unable to reach Home page  of Frozen Free Fall"                   
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step6>' -replacewithtext $testDescriptionFail
            }
          }  
         7{   
            #Switch to DyingReborn and verifying that Game Resumes exactly where it was left 
             Start-Sleep -Seconds 3
             ConsoleOne_CtrllerXbox
             Start-Sleep -Seconds 2
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerEnter                                      
            $Global:ElapsedTime = 30
            $isDyingRebornResume = Pattern_Verification -CapturedImage "DyingRebornResume" -IconImage "DyingRebornResume"
            if($isDyingRebornResume -eq $false)
            {
              ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step7>' -replacewithtext "Success"
                $case_cnt++ 
            }
            else
            { 
                $case_cnt = 9                   
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step7>' -replacewithtext $testDescriptionFail               
            }       
         }
         8 {  
             # Switch to DyingReborn  after launching Frozen Free Fall
            #Verify game has loaded, the first screen with Press Menu Button
            $Global:ElapsedTime = 90
            $IsDyingRebornPressMenu = Pattern_Verification -CapturedImage "DyingReborn_FirstScreen" -IconImage "DyingReborn_FirstScreen"           
            if($IsDyingRebornPressMenu -eq $true)
            {     
                Start-Sleep -Seconds 2 
                #Press Enter (A)
                ConsoleOne_CtrllerEnter  
            }
            #Verify user is able to reach main menu
            $Global:ElapsedTime = 80
            $isDyingRebornMenu = Pattern_Verification -CapturedImage "DyingReborn_MenuScreen" -IconImage "DyingReborn_MenuScreen"
            if($isDyingRebornMenu -eq $true)
            {
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerDwn
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 1
                ConsoleOne_CtrllerDwn
                ConsoleOne_CtrllerEnter
            }
            #Verify DyingReborn's Gameplay
            $Global:ElapsedTime = 80
            $isDyingRebornGameplay = Pattern_Verification -CapturedImage "DyingReborn_Gameplay" -IconImage "DyingReborn_Gameplay"
            if($isDyingRebornGameplay -eq $true)
            {
              ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step8>' -replacewithtext "Success"
              $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 9 "Unable to load DyingReborn  second time" 
                $testDescriptionFail = "Unable to find first loaded screen of DyingReborn  second time"  
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step8>' -replacewithtext $testDescriptionFail
            }
          }
   

        9 {
            #Quitting DyingReborn 
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once 
            #$isGameQuit1 = Quit_LaunchedSecondGame_Relay -console $Global:Once         
            if($isGameQuit -eq $true,$isGameQuit1 -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                $testDescriptionPass = "Success"   
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step9>' -replacewithtext "Success"            
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                $testDescriptionFail = "Unable to Quit GAME " + $game_title 
                Debug_Info 5 "Unable to Exit Game"   
                ReplaceTag –Document $Doc -FindText '<DyingReborn_SwitchToDifferentGame_Step9>' -replacewithtext $testDescriptionFail               
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


