#Before executing take game to the check point 

Function GearsOfWar($gamePlayTime, $launchUsing){

  $game_title = "GearsOfWar"
  $game_title_hub = "Gears of War"
  $testDescriptionPass = ""
  $testDescriptionFail = ""  
  $tc_status = $false
  $loop_status = $true
  $case_cnt = 0
  $Global:ElapsedTime = 90  
  $GameUpdateFound = $false  

  $isHomeScreen = VerifyHomeScreen      
  <# Need to see if we need to exit the game as home screen is not coming #>  

  while($loop_status){

     switch($case_cnt){
        0 {          
                        
            #Launch Game 
            #Launch Using Voice
            if($launchUsing -eq "Voice"){
                $str = "launch " + $game_title 
                VoiceTrigger -VoiceText $str                
                $gameSelected= $true
                
                }

            #Launch Using Search
            if($launchUsing -eq "Search"){
                $gameSelected = Launch_GameUsingSearch -game_name "Gears"                
                }

            #temporary Workaround for testing
            if($launchUsing -eq "Test"){
                ConsoleOne_CtrllerEnter
                $gameSelected= $true
                }


            if($gameSelected -eq $true){  
                ReplaceTag –Document $Doc -FindText '<GearsOfWar_Step1>' -replacewithtext "Success"
                Start-Sleep -Seconds 2                
                $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 0 "Launch + "$game_title + " Using " + $launchUsing
                $testDescriptionFail = "Unable to select Game" + $game_title                  
            }              
          }

        1{
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
                ReplaceTag –Document $Doc -FindText '<GearsOfWar_Update>' -replacewithtext "Gears of War update triggered"
            }
            else
            {
                $case_cnt++
                ReplaceTag –Document $Doc -FindText '<GearsOfWar_Update>' -replacewithtext "No Update found"
            }                    
         }   

        2{
            #Verify game has loaded, the first screen with Press Any Button           
            
            $Global:ElapsedTime = 30
            #Verify that if we have landed on Choose your experience
            $isChooseAceCampaignScreen = Pattern_Verification -CapturedImage "GearsOfWar_FirstScreen" -IconImage "GearsOfWar_FirstScreen"
            
            if($isChooseAceCampaignScreen -eq $true){

                Start-Sleep -Seconds 1  
                #Press Enter (A)
                ConsoleOne_CtrllerEnter                

                #Handling Who Are you Screen
                $isWhoAreYouScreen = WhoAreYouScreenHandle

                if($isWhoAreYouScreen -eq $false){
                    $case_cnt++
                    ReplaceTag –Document $Doc -FindText '<GearsOfWar_Step2>' -replacewithtext "Success"
                } 
            }     

            else
            {              
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to select the default settings for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<GearsOfWar_Step2>' -replacewithtext $testDescriptionFail

            }  
         } 
         
         3{
            #Default settings

            $Global:ElapsedTime = 30
            #Verify that if we have landed on Choose your experience
            $isChooseAceCampaignScreen = Pattern_Verification -CapturedImage "GearsOfWar_MenuScreen" -IconImage "GearsOfWar_MenuScreen"

            if($isChooseAceCampaignScreen -eq $true){
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerEnter

                ReplaceTag –Document $Doc -FindText '<GearsOfWar_Step3>' -replacewithtext "Success"
                $case_cnt ++ 

            }
            else
            {
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to select the default settings for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<GearsOfWar_Step3>' -replacewithtext $testDescriptionFail
            }  
         
         }     
         
         4{            
            #Verify we are in game play
            $Global:ElapsedTime = 200
            #Verify that if we have landed on Choose your experience
            $isChooseExpScreen = Pattern_Verification -CapturedImage "GearsOfWar_GamePlay" -IconImage "GearsOfWar_GamePlay"
            
            if($isChooseExpScreen -eq $true){

                ReplaceTag –Document $Doc -FindText '<GearsOfWar_Step4>' -replacewithtext "Success"
                Start-Sleep -Seconds 3
                
                while ($counter -lt $gamePlayTime)
                {
                    #Play inside game for some time                                                                                                             
                    
                    ConsoleOne_CtrllerEnter
                    Start-Sleep -Seconds 2
                    PressLeftThumb -waittime 500
                    ReleaseController -HoldedButton $Left_Thumb
                    Start-Sleep -Seconds 2 
                                       
                    $counter = $counter + 10
                }
                
                $case_cnt ++               
            }

            else
            {              
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 3 "Selections_Haven"
                $testDescriptionFail = "Unable to select the default settings for game " + $game_title
                ReplaceTag –Document $Doc -FindText '<GearsOfWar_Step4>' -replacewithtext $testDescriptionFail
            }                 
         }            
      

        5{
            #Quit the game
            $isGameQuit = Quit_LaunchedGame_Relay -console $Global:Once          

            if($isGameQuit -eq $true){
                $tc_status = $true           
                $case_cnt = 20            
                $testDescriptionPass = "Success"   
                ReplaceTag –Document $Doc -FindText '<GearsOfWar_Step5>' -replacewithtext "Success"            
            }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                $testDescriptionFail = "Unable to Quit GAME " + $game_title 
                Debug_Info 5 "Unable to Exit Game"   
                ReplaceTag –Document $Doc -FindText '<GearsOfWar_Step5>' -replacewithtext $testDescriptionFail               
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
