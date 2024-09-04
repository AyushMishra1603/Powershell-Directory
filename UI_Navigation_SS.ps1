Function UI_Navigation_SS(){

  $game_title = "UI_Navigation_SS"
  $game_title_hub = "UI_Navigation_SS"
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
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_SS_Step1>' -replacewithtext  "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_SS_Step1>' -replacewithtext  "Fail"
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
                ConsoleOne_CtrllerRht
                Start-Sleep -Seconds 2
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_SS_Step2>' -replacewithtext  "Success"
                $case_cnt++
            }
            else{
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_SS_Step2>' -replacewithtext  "Fail"
                $case_cnt = 20
                $tc_status = $false
            }

         }

         3{
            $Global:ElapsedTime = 30
            $isCreateScrn = Pattern_Verification -CapturedImage "MineCraft_Chat" -IconImage "MineCraft_Chat"
            if($isCreateScrn -eq $true){
                Start-Sleep -Seconds 4
                ConsoleOne_CtrllerRht
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step3>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step3>' -replacewithtext "Fail"
            }

         }

         4{
            $Global:ElapsedTime = 30
            $isCreateScrn = Pattern_Verification -CapturedImage "MineCraft_Achievement" -IconImage "MineCraft_Achievement"
            if($isCreateScrn -eq $true){
                Start-Sleep -Seconds 4
                ConsoleOne_CtrllerRht
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step4>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step4>' -replacewithtext "Fail"
            }

         }

         5{
            $Global:ElapsedTime = 60
            $iscreateNew = Pattern_Verification -CapturedImage "MineCraft_Marketplace" -IconImage "MineCraft_Marketplace"
            if($iscreateNew -eq $true){
                Start-Sleep -Seconds 4
                ConsoleOne_CtrllerRht
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step5>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step5>' -replacewithtext "Fail"
            }

        }

        6{
            $Global:ElapsedTime = 30
            $isCreateNewWorld = Pattern_Verification -CapturedImage "Minecraft_DR" -IconImage "Minecraft_DR"
            if($isCreateNewWorld -eq $true){
                Start-Sleep -Seconds 4
                ConsoleOne_CtrllerUp
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step6>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step6>' -replacewithtext "Fail"
            }
           
         }

         7{
            $Global:ElapsedTime = 30
            $isCreateScrn = Pattern_Verification -CapturedImage "Minecraft_Setting" -IconImage "Minecraft_Setting"
            if($isCreateScrn -eq $true){
                Start-Sleep -Seconds 4
                ConsoleOne_CtrllerUp
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step7>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step7>' -replacewithtext "Fail"
            }
            
          }

         8{ 
            $Global:ElapsedTime = 30
            $isMinecraft_Gameplay = Pattern_Verification -CapturedImage "Minecraft_PlayButton" -IconImage "Minecraft_PlayButton"
            if($isMinecraft_Gameplay -eq $true){
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step8>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<UI_Navigation_SS_Step8>' -replacewithtext "Fail"
            }
          }

        9{
            #Quit the game
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once          
            
            if($isGameQuit -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_SS_Step9>' -replacewithtext "Success"                
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                ReplaceTag –Document $Doc -FindText '<UI_Navigation_SS_Step9>' -replacewithtext "Fail"
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

