Function UI_FocusHandling(){

  $game_title = "UI_FocusHandling"
  $game_title_hub = "UI FocusHandling"
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
            #Launch STAR WARS Jedi:Fallen Order
            $gameSelected=Launch_GameUsingSearch -game_name "Jedi"

            if($gameSelected -eq $true){  
                Start-Sleep -Seconds 2                
                $case_cnt++
                ReplaceTag –Document $Doc -FindText '<UI_FocusHandling_Step1>' -replacewithtext  "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag –Document $Doc -FindText '<UI_FocusHandling_Step1>' -replacewithtext  "Fail"
            }              
          
          }

        2{
            #Verify Home screen for game
            $Global:ElapsedTime = 120
            $ExpGame = Pattern_Verification -CapturedImage "StarWars_Home" -IconImage "StarWars_Home"           
            if($ExpGame -eq $true){
                Start-Sleep -Seconds 1
                ConsoleOne_CtrllerDwn
                ConsoleOne_CtrllerDwn
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 1
                ConsoleOne_CtrllerEnterDeepPress

                $Global:ElapsedTime = 30
                $ExpGame = Pattern_Verification -CapturedImage "StarWars_Storage" -IconImage "StarWars_Storage"           
                if($ExpGame -eq $true){
                    ConsoleOne_CtrllerEnter
                    Start-Sleep -Seconds 2
                    ConsoleOne_CtrllerEnter
                    Start-Sleep -Seconds 2
                    ConsoleOne_CtrllerEnter
                }
                ReplaceTag –Document $Doc -FindText '<UI_FocusHandling_Step2>' -replacewithtext  "Success"
                $case_cnt++
            }
            else{
                ReplaceTag –Document $Doc -FindText '<UI_FocusHandling_Step2>' -replacewithtext  "Fail"
                $case_cnt = 20
                $tc_status = $false
            }

         }

         3{
            #Verify Gameplay
            $Global:ElapsedTime = 180
            $isGameplay = Pattern_Verification -CapturedImage "StarWars_GamePlay" -IconImage "StarWars_GamePlay"
            if($isGameplay -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step3>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step3>' -replacewithtext "Fail"
            }

         }

         4{
            #To Check for Underline and Outlining on Focussed elements
            ConsoleOne_CtrllerMenu

            #Verify Focussed element
            $Global:ElapsedTime = 60
            $isAbilitiesScrn = Pattern_Verification -CapturedImage "StarWars_Abilities" -IconImage "StarWars_Abilities"
            if($isAbilitiesScrn -eq $true){
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step4>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step4>' -replacewithtext "Fail"
            }

         }

         5{
            #Verify Next Focussed element
            ConsoleOne_CtrllerRB

            #Verify Create New Selected
            $Global:ElapsedTime = 60
            $isSettingsScrn = Pattern_Verification -CapturedImage "StarWars_Settings" -IconImage "StarWars_Settings"
            if($isSettingsScrn -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step5>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step5>' -replacewithtext "Fail"
            }

        }

        6{
            #Verify outlined Focussed element
            ConsoleOne_CtrllerDwn

            $Global:ElapsedTime = 60
            $isGameplayScrn = Pattern_Verification -CapturedImage "StarWars_GameplaySettings" -IconImage "StarWars_GameplaySettings"
            if($isGameplayScrn -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step6>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step6>' -replacewithtext "Fail"
            }
           
         }

         7{
            #Verify next outlined Focussed element
            ConsoleOne_CtrllerDwn

            $Global:ElapsedTime = 60
            $isVisualScrn = Pattern_Verification -CapturedImage "StarWars_VisualsSettings" -IconImage "StarWars_VisualsSettings"
            if($isVisualScrn -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step7>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step7>' -replacewithtext "Fail"
            }
            
          }

         8{ 
            #Verify focus shouldn't move to non-interactive element.
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht

            #Verify Focus should be on "QUIT TO TITLE SCREEN"
            $Global:ElapsedTime = 90
            $isQuitScrn = Pattern_Verification -CapturedImage "StarWars_QuitFocus" -IconImage "StarWars_QuitFocus"
            if($isQuitScrn -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step8>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step8>' -replacewithtext "Fail"
            }
          }

        9{
            ConsoleOne_CtrllerLft

            #Verify Focus should be on "Quit"
            $Global:ElapsedTime = 60
            $isQuitScrn = Pattern_Verification -CapturedImage "StarWars_Quit" -IconImage "StarWars_Quit"
            if($isQuitScrn -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step9>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_FocusHandling_Step9>' -replacewithtext "Fail"
            }

         }
         
        10{
            #Quit the game
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once          
            
            if($isGameQuit -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                ReplaceTag –Document $Doc -FindText '<UI_FocusHandling_Step10>' -replacewithtext "Success"                
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                ReplaceTag –Document $Doc -FindText '<UI_FocusHandling_Step10>' -replacewithtext "Fail"
            }
        }
        
        20{
            FinalizeGameStatus -game_title $game_title  -game_title_hub $game_title_hub -tc_status $tc_status -GameUpdateFound $GameUpdateFound -testDescriptionFail $testDescriptionFail -testDescriptionPass $testDescriptionPass                             
            $loop_status = $false            
        }

        default{
        $loop_status = $false
        } 
     }
  }
   
  return $tc_status
}

