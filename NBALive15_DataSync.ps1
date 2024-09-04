
Function NBALive15_DataSync{

  $game_title = "NBALive15_DataSync"
  $game_title_hub = "NBALive15_DataSync"
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
        1 {  #Launch NBALive15         
              Launch_GameUsingSearch -game_name "Ve 15"
              Start-Sleep -Seconds 8
              Quit_LaunchedGame_Relay -console $Global:Once
              Start-Sleep -Seconds 3
              #Delete the previous saved data
              DeleteGameData_Usingsearch
              ReplaceTag –Document $Doc -FindText '<NBALive15_DataSync_Step1>' -replacewithtext "Success"            
              $case_cnt++
          }
        2{ #Launch NBALive15 Game
            ConsoleOne_CtrllerEnter
            #Verify First Screen of the Title has been found
            $Global:ElapsedTime = 120
            $PressButtonFound = Pattern_Verification -CapturedImage "NBALive15_FirstScreen" -IconImage "NBALive15_FirstScreen"           
            if($PressButtonFound -eq $true){     
                ReplaceTag –Document $Doc -FindText '<NBALive15_DataSync_Step2>' -replacewithtext "Success"            
                Start-Sleep -Seconds 2  
                ConsoleOne_CtrllerEnter  
                Start-Sleep -Seconds 2  
                ConsoleOne_CtrllerEnter      
                $case_cnt++
               } 
            else
            {
                $case_cnt = 20
                $tc_status = $false                 
                Debug_Info 5 "Unable to find the first screen of the title"             
                ReplaceTag –Document $Doc -FindText '<NBALive15_DataSync_Step2>' -replacewithtext "Failed" 
            }                 
         }


         3{ #Verify that the data is loading 
            $Global:ElapsedTime = 120
            $DataSyncFound = Pattern_Verification -CapturedImage "Data_Sync" -IconImage "Data_Sync"           
            if($DataSyncFound -eq $true){     
                ReplaceTag –Document $Doc -FindText '<NBALive15_DataSync_Step3>' -replacewithtext "Success"            
                Start-Sleep -Seconds 10
                Quit_LaunchedGame_Relay -console $Global:Once
                $case_cnt++  
               } 

            else
            {
                $case_cnt = 20
                $tc_status = $false                
                Debug_Info 5 "Unable to find Data Sync"             
                ReplaceTag –Document $Doc -FindText '<NBALive15_DataSync_Step3>' -replacewithtext "Failed" 
            }                 
          }

        4{  #Verify that the data has been loaded
             $isDataFound = DataFound
             if($DataFound -eq $isDataFound){     
                ReplaceTag –Document $Doc -FindText '<NBALive15_DataSync_Step4>' -replacewithtext "Success"            
                Start-Sleep -Seconds 2
                $tc_status = $true           
                $case_cnt = 20            
                $testDescriptionPass = "Success" 
               } 

            else
            {
                $case_cnt = 20
                $tc_status = $false                
                Debug_Info 5 "Unable to find Saved data"             
                ReplaceTag –Document $Doc -FindText '<NBALive15_DataSync_Step4>' -replacewithtext "Failed" 
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


