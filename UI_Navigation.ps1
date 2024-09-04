Function UI_Navigation(){

  $game_title = "UI_Navigation"
  $game_title_hub = "UI Navigation"
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
            #Launch Minecraft
            $gameSelected=Launch_GameUsingSearch -game_name "Mine"

            if($gameSelected -eq $true){  
                Start-Sleep -Seconds 2                
                $case_cnt++
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_Step1>' -replacewithtext  "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_Step1>' -replacewithtext  "Fail"
            }              
          
          }

        2{
            #Verify Continue button
            $Global:ElapsedTime = 30
            $isPlayHere = Pattern_Verification -CapturedImage "MineCraft_Continue" -IconImage "MineCraft_Continue" 
            while($isPlayHere -eq $true){
                ConsoleOne_CtrllerEnter
                $Global:ElapsedTime = 10
                $isPlayHere = Pattern_Verification -CapturedImage "MineCraft_Continue" -IconImage "MineCraft_Continue" 
            }

            #Verify Home screen for Minecraft
            $Global:ElapsedTime = 120
            $ExpGame = Pattern_Verification -CapturedImage "MineCraft_playButtonB&W" -IconImage "MineCraft_playButtonB&W"           
            if($ExpGame -eq $true){
                Start-Sleep -Seconds 4
                ConsoleOne_CtrllerDwn
                Start-Sleep -Seconds 2
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_Step2>' -replacewithtext  "Success"
                $case_cnt++
            }
            else{
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_Step2>' -replacewithtext  "Fail"
                $case_cnt = 20
                $tc_status = $false
            }

         }

         3{
            #To Check for Menu Looping [Either Left-Right OR Top-Bottom]

            #Verify Focus should be on "Play"
            $Global:ElapsedTime = 60
            $isCreateScrn = Pattern_Verification -CapturedImage "MineCraft_playButton" -IconImage "MineCraft_playButton"
            if($isCreateScrn -eq $true){
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step3>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step3>' -replacewithtext "Fail"
            }

         }

         4{
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn

            #Verify Focus should be on "Play"
            $Global:ElapsedTime = 60
            $isCreateScrn = Pattern_Verification -CapturedImage "MineCraft_playButton" -IconImage "MineCraft_playButton"
            if($isCreateScrn -eq $true){
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step4>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step4>' -replacewithtext "Fail"
            }

         }

         5{
            #To Check for Consistent UI navgation

            #Navigate to Next Screen by Pressing Enter
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 2
            ConsoleOne_CtrllerDwn

            #Verify Create New Selected
            $Global:ElapsedTime = 60
            $iscreateNew = Pattern_Verification -CapturedImage "MineCraft_createNew" -IconImage "MineCraft_createNew"
            if($iscreateNew -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step5>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step5>' -replacewithtext "Fail"
            }

        }

        6{
            #Navigate to Next Screen by Pressing Enter
            ConsoleOne_CtrllerEnter

            $Global:ElapsedTime = 60
            $isCreateNewWorld = Pattern_Verification -CapturedImage "Minecraft_CNW" -IconImage "Minecraft_CNW"
            if($isCreateNewWorld -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step6>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step6>' -replacewithtext "Fail"
            }
           
         }

         7{
            #Navigate to Next Screen by Pressing Enter
            ConsoleOne_CtrllerEnter

            $Global:ElapsedTime = 60
            $isCreateScrn = Pattern_Verification -CapturedImage "Minecraft_Create" -IconImage "Minecraft_Create"
            if($isCreateScrn -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step7>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step7>' -replacewithtext "Fail"
            }
            
          }

         8{ 
            #Navigate to Next Screen by Pressing Enter
            ConsoleOne_CtrllerEnter

            #Verify Minecraft Gameplay
            $Global:ElapsedTime = 90
            $isMinecraft_Gameplay = Pattern_Verification -CapturedImage "Minecraft_Gameplay" -IconImage "Minecraft_Gameplay"
            if($isMinecraft_Gameplay -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step8>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step8>' -replacewithtext "Fail"
            }
          }

        9{
            #To Check for Menu Looping in Gameplay[Either Left-Right OR Top-Bottom]
            ConsoleOne_CtrllerMenu

            #Verify Focus should be on "Resume Game"
            $Global:ElapsedTime = 60
            $isCreateScrn = Pattern_Verification -CapturedImage "Minecraft_Resume" -IconImage "Minecraft_Resume"
            if($isCreateScrn -eq $true){
                Start-Sleep -Seconds 2
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step9>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step9>' -replacewithtext "Fail"
            }

         }

         10{
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn

            #Verify Focus should be on "Resume Game"
            $Global:ElapsedTime = 60
            $isCreateScrn = Pattern_Verification -CapturedImage "Minecraft_Resume" -IconImage "Minecraft_Resume"
            if($isCreateScrn -eq $true){
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step10>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_Step10>' -replacewithtext "Fail"
            }

        }

        11{
            #Quit the game
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once          
            
            if($isGameQuit -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_Step11>' -replacewithtext "Success"                
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_Step11>' -replacewithtext "Fail"
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

