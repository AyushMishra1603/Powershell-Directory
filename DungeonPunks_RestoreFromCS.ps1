﻿Function DungeonPunks_RestoreFromCS($launchUsing, $gamePlayTime){

  $game_title = "DungeonPunks_RestoreFromCS"
  $game_title_hub= "Dungeon Punks Restore From CS"
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
                $gameSelected = Launch_GameUsingSearch -game_name "on p"                
                }

            #temporary Workaround for testing
            if($launchUsing -eq "Test"){
                ConsoleOne_CtrllerEnter
                $gameSelected= $true
                }


            if($gameSelected -eq $true){  
                ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step1>' -replacewithtext "Success"
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
            $isChooseAceCampaignScreen = Pattern_Verification -CapturedImage "DungeonPunks_FirstScreen" -IconImage "DungeonPunks_FirstScreen"
            
            if($isChooseAceCampaignScreen -eq $true){

                Start-Sleep -Seconds 2 
                #Press Enter (A)
                ConsoleOne_CtrllerEnter  
                    $case_cnt++
                    ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step2>' -replacewithtext "Success"
                } 
                 
            else
            {              
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to find first screen for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step2>' -replacewithtext $testDescriptionFail
            } 
           } 
         
         3{
            #Default settings
            $Global:ElapsedTime = 60
            #Verify that if we have landed on Choose your experience
            $isChooseAceCampaignScreen = Pattern_Verification -CapturedImage "DungeonPunks_MenuScreen" -IconImage "DungeonPunks_MenuScreen"

            if($isChooseAceCampaignScreen -eq $true){
                
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 1
                ConsoleOne_CtrllerEnter                             
                
                ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step3>' -replacewithtext "Success"
                $case_cnt ++ 
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to select the default settings for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step3>' -replacewithtext $testDescriptionFail
            }           
         }     
         
         4{        
            #Verify we are in game play
            $Global:ElapsedTime = 90
            #Verify that if we have landed on Choose your experience
            $isChooseExpScreen = Pattern_Verification -CapturedImage "DungeonPunks_GamePlay" -IconImage "DungeonPunks_GamePlay"
            
            if($isChooseExpScreen -eq $true){
                ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step4>' -replacewithtext "Success"
                Start-Sleep -Seconds 1
                while ($counter -lt $gamePlayTime)
                {
                    #Play inside game for some time
                    ConsoleOne_CtrllerUp
                    Start-Sleep -Seconds 1
                    ConsoleOne_CtrllerDwn
                    Start-Sleep -Seconds 1
                    ConsoleOne_CtrllerRht
                    Start-Sleep -Seconds 1
                    ConsoleOne_CtrllerLft
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
                ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step4>' -replacewithtext $testDescriptionFail
            }                 
         }            

       5 { #Go to Connected StandBy
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
            Start-Sleep -Seconds 15
            ConsoleOne_CtrllerPwr
            Start-Sleep -Seconds 10
            #ConsoleOne_CtrllerEnter 
            Start-Sleep -Seconds 4
            $isHomeScreen = VerifyHomeScreen  
            $case_cnt++ 
         }
         6{   
            #Switch to Never Alone  after Console Standby and verifying that Game Resumes exactly where it was left 
            Start-Sleep -Seconds 5
            ConsoleOne_CtrllerRht
             ConsoleOne_CtrllerEnter                                      
            $Global:ElapsedTime = 80
            $isDungeonPunksResume = Pattern_Verification -CapturedImage "DungeonPunksResume" -IconImage "DungeonPunksResume"
            if($isDungeonPunksResume -eq $true)
            { ConsoleOne_CtrllerEnter
              ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step5>' -replacewithtext "Success"
                $case_cnt = 8 
            }
            else
            { 
                $case_cnt++                   
                ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step5>' -replacewithtext $testDescriptionFail               
            }       
         } 
       7 {  
            #Verify game has loaded, the first screen with Press Menu Button
            $Global:ElapsedTime = 90
            $IsDungeonPunksPressMenu = Pattern_Verification -CapturedImage "DungeonPunks_FirstScreen" -IconImage "DungeonPunks_FirstScreen"           
            if($IsDungeonPunksPressMenu -eq $true)
            {     
                Start-Sleep -Seconds 2 
                #Press Enter (A)
                ConsoleOne_CtrllerEnter   
            }
            #Verify user is able to reach main menu
            $Global:ElapsedTime = 80
            $isDungeonPunksMenu = Pattern_Verification -CapturedImage "DungeonPunks_MenuScreen" -IconImage "DungeonPunks_MenuScreen"
            if($isDungeonPunksMenu -eq $true)
            {
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 1
                ConsoleOne_CtrllerEnter     
              
            }
            #Verify DungeonPunks's Gameplay
            $Global:ElapsedTime = 80
            $isDungeonPunksGameplay = Pattern_Verification -CapturedImage "DungeonPunks_Gameplay" -IconImage "DungeonPunks_Gameplay"
            if($isDungeonPunksGameplay -eq $true)
            {
              ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step6>' -replacewithtext "Success"
              $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 9 "Unable to load DungeonPunks  second time" 
                $testDescriptionFail = "Unable to find first loaded screen of DungeonPunks  second time"  
                ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step6>' -replacewithtext $testDescriptionFail
            }
          }
         8 {
            #Quitting DungeonPunks
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once          
            if($isGameQuit -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                $testDescriptionPass = "Success"   
                ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step7>' -replacewithtext "Success"            
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                $testDescriptionFail = "Unable to Quit GAME " + $game_title 
                Debug_Info 5 "Unable to Exit Game"   
                ReplaceTag –Document $Doc -FindText '<DungeonPunks_RestoreFromCS_Step7>' -replacewithtext $testDescriptionFail               
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

