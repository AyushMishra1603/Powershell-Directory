 
<# to do 
Offline mode
First screen mode on first time run
#>

Function NightmareBoy_DataSync{

  $game_title = "NightmareBoy_DataSync"
  $game_title_hub = "NightmareBoy_DataSync"
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
        
            #Delete saved data
            DeleteGameData_Usingsearch -game_name "Night"
            if($datadelete -eq $true){  
                ReplaceTag –Document $Doc -FindText '<NeverAlone_Step1>' -replacewithtext "Success"
                Start-Sleep -Seconds 2                
                $case_cnt++
            }
            else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 0 "Launch + "$game_title + " Using " + $launchUsing
                $testDescriptionFail = "Unable to select Game " + $game_title  
                ReplaceTag –Document $Doc -FindText '<NeverAlone_Step1>' -replacewithtext $testDescriptionFail
            }
            }      

        2{
            #Launch Using Search
            
                Launch_GameUsingSearch -game_name "Night"
                #ConsoleOne_CtrllerEnter
                if($launchgame -eq $true){
            
            #Verification using Image Search
            $Global:ElapsedTime = 100
            $PressButtonFound = Pattern_Verification -CapturedImage "NightmareBoy_FirstScreen" -IconImage "NightmareBoy_FirstScreen"           

            if($PressButtonFound -eq $true){     
                ReplaceTag –Document $Doc -FindText '<NeverAlone_Step2>' -replacewithtext "Success"            
                Start-Sleep -Seconds 2  
                ConsoleOne_CtrllerEnter     
                Start-Sleep -Seconds 5  
                ConsoleOne_CtrllerEnter
                }
                $case_cnt++
                
            } 
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                 
                Debug_Info 5 "Unable to Exit Game"             
                ReplaceTag –Document $Doc -FindText '<NeverAlone_Step2>' -replacewithtext "Failed" 
                }
            }


        3{   
            #Launch Using Search
            CheckGameData_Usingsearch -game_name "Night"
            if($SavedDataFound -eq $true){ 
                $case_cnt = 20 
                $tc_status = $true   
                ReplaceTag –Document $Doc -FindText '<NeverAlone_Step3>' -replacewithtext "Success"
                
                }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                $testDescriptionFail = "Unable to Quit GAME " + $game_title 
                Debug_Info 5 "Unable to Exit Game"             
                ReplaceTag –Document $Doc -FindText '<NeverAlone_Step3>' -replacewithtext "Failed"   
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



