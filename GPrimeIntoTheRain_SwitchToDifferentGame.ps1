﻿Function GPrimeIntoTheRain_SwitchToDifferentGame($launchUsing,$gamePlayTime){

  $game_title = "GPrimeIntoTheRain_SwitchToDifferentGame"
  $game_title_hub= "G Prime Into The Rain Switch To Different Game"
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
                $gameSelected = Launch_GameUsingSearch -game_name "G p"                
                }

            #temporary Workaround for testing
            if($launchUsing -eq "Test"){
                ConsoleOne_CtrllerEnter
                $gameSelected= $true
                }


            if($gameSelected -eq $true){  
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step1>' -replacewithtext "Success"
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
            #Default settings
            Start-Sleep -Seconds 40
             ConsoleOne_CtrllerEnter 
            $Global:ElapsedTime = 120
            #Verify that if we have landed on Choose your experience
            $isChooseAceCampaignScreen = Pattern_Verification -CapturedImage "GPrimeIntoTheRain_MenuScreen" -IconImage "GPrimeIntoTheRain_MenuScreen"

            if($isChooseAceCampaignScreen -eq $true){
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerEnter
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step2>' -replacewithtext "Success"
                $case_cnt ++ 
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to select the default settings for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step2>' -replacewithtext $testDescriptionFail
            }           
         }     
         
         3{        
            #Verify we are in game play
            $Global:ElapsedTime = 90
            #Verify that if we have landed on Choose your experience
            $isChooseExpScreen = Pattern_Verification -CapturedImage "GPrimeIntoTheRain_GamePlay" -IconImage "GPrimeIntoTheRain_GamePlay"
            
            if($isChooseExpScreen -eq $true){
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step3>' -replacewithtext "Success"
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
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step3>' -replacewithtext $testDescriptionFail
            }                 
         }                       

        4 { ConsoleOne_CtrllerXbox
            Start-Sleep -Seconds 2
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 2
            # Launch Another Game
            if($launchUsing -eq "Search"){
                $gameSelected = Launch_GameUsingSearch -game_name "Froz"                
                }

            if($gameSelected -eq $true)
            {  
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step4>' -replacewithtext "Success"
                Start-Sleep -Seconds 2                
                $case_cnt++
            }

            else
            {
                $case_cnt = 20
                $tc_status = $false
                $testDescriptionFail = "Unable to launch Frozen Free Fall"
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step4>' -replacewithtext $testDescriptionFail                  
            }      
          }
           
       5 { 
            #Verify that we landed on the Start Screen of Frozen Free Fall
            $Global:ElapsedTime = 90
            $IsFrozen = Pattern_Verification -CapturedImage "Frozen_PressA" -IconImage "Frozen_PressA"
            if($IsFrozen -eq $true)
            {
              ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step5>' -replacewithtext "Success"
              $case_cnt++
            }
            else
            { 
                $case_cnt = 20
                $tc_status = $false
                $testDescriptionFail = "Unable to reach to the First Screen of Frozen Free Fall"
                Debug_Info 8 "Unable to reach Home page  of Frozen Free Fall"                   
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step5>' -replacewithtext $testDescriptionFail
            }
          }  
         6{   
            #Switch to GPrimeIntoTheRain and verifying that Game Resumes exactly where it was left 
             Start-Sleep -Seconds 3
             ConsoleOne_CtrllerXbox
             Start-Sleep -Seconds 2
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerEnter                                      
            $Global:ElapsedTime = 30
            $isGPrimeIntoTheRainResume = Pattern_Verification -CapturedImage "GPrimeIntoTheRainResume" -IconImage "GPrimeIntoTheRainResume"
            if($isGPrimeIntoTheRainResume -eq $false)
            {
              ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step6>' -replacewithtext "Success"
                $case_cnt++ 
            }
            else
            { 
                $case_cnt = 9                   
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step6>' -replacewithtext $testDescriptionFail               
            }       
           }
         7 {  
             # Switch to GPrimeIntoTheRain  after launching Frozen Free Fall
            #Verify user is able to reach main menu
            Start-Sleep -Seconds 25
             ConsoleOne_CtrllerEnter 
            $Global:ElapsedTime = 80
            $isGPrimeIntoTheRainMenu = Pattern_Verification -CapturedImage "GPrimeIntoTheRain_MenuScreen" -IconImage "GPrimeIntoTheRain_MenuScreen"
            if($isGPrimeIntoTheRainMenu -eq $true)
            {   Start-Sleep -Seconds 2
                ConsoleOne_CtrllerEnter
            }
            #Verify GPrimeIntoTheRain's Gameplay
            $Global:ElapsedTime = 80
            $isGPrimeIntoTheRainGameplay = Pattern_Verification -CapturedImage "GPrimeIntoTheRain_Gameplay" -IconImage "GPrimeIntoTheRain_Gameplay"
            if($isGPrimeIntoTheRainGameplay -eq $true)
            {
              ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step7>' -replacewithtext "Success"
              $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 9 "Unable to load GPrimeIntoTheRain  second time" 
                $testDescriptionFail = "Unable to find first loaded screen of GPrimeIntoTheRain  second time"  
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step7>' -replacewithtext $testDescriptionFail
            }
          }
   

        8 {
            #Quitting GPrimeIntoTheRain 
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once 
            #$isGameQuit1 = Quit_LaunchedSecondGame_Relay -console $Global:Once         
            if($isGameQuit -eq $true,$isGameQuit1 -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                $testDescriptionPass = "Success"   
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step8>' -replacewithtext "Success"            
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                $testDescriptionFail = "Unable to Quit GAME " + $game_title 
                Debug_Info 5 "Unable to Exit Game"   
                ReplaceTag –Document $Doc -FindText '<GPrimeIntoTheRain_SwitchToDifferentGame_Step8>' -replacewithtext $testDescriptionFail               
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


