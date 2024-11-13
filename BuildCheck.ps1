Function BuildCheck()
{
#$isHomeScreen = VerifyHomeScreen 
$Global:ElapsedTime = 90 
  $case_cnt =1
$loop_status = $true

#to check if settings is closed
Quit_LaunchedGame_Relay -console $Global:Once

ConsoleOne_CtrllerXbox
Set_FixedDelay -DelayTime $Global:Twice
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
start-sleep -Seconds 1
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
#ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
#>

while($loop_status){

    Switch(  $case_cnt){

            1{
                $Global:ElapsedTime = 20
                #Verification using Text Search
            Captured_ImgPath -img_name "Build_Check"
            Icon_ImgPath -img_name "Build_Check"
            $ExpectedText = "Update Console"
            $PressButtonFound = VerifyOCRTextMatch -ExtractRegionLabel "Build_Check"  -PageLabel "label1" -ExpectedText $ExpectedText
           

            if($Global:ExtractedText -eq $ExpectedText){  
                 start-sleep -Seconds 2
                 ConsoleOne_CtrllerUp
                 Start-Sleep -Seconds 10
                 ConsoleOne_CtrllerEnter
                 Start-Sleep -Seconds 10
                 ConsoleOne_CtrllerEnter
                 Start-Sleep -Seconds 10
                 $case_cnt=2

                }
           
             else{   
                ConsoleOne_CtrllerExit
                ConsoleOne_CtrllerRht
                ConsoleOne_CtrllerDwn
                ConsoleOne_CtrllerEnter
                
                $case_cnt=1
                }
            }

            2{
              $Global:ElapsedTime = 60              
            Captured_ImgPath -img_name "try_again"
            Icon_ImgPath -img_name "try_again"
            $ExpectedText = "Try again"
            $try_again = VerifyOCRTextMatch -ExtractRegionLabel "try_again"  -PageLabel "label1" -ExpectedText $ExpectedText
            $build_home = Pattern_Verification -CapturedImage "Home_Icon" -IconImage "Home_Icon"
            
            if($Global:ExtractedText -eq $ExpectedText){
                start-sleep -Seconds 5
                ConsoleOne_CtrllerEnter
                $case_cnt=2

            }
            elseif($build_home -eq $true){
            Start-Sleep -Seconds 5
            ConsoleOne_CtrllerPwr
            Start-Sleep -Seconds 5
           
            Quit_LaunchedGame_Relay -console $Global:Once
            $loop_status = $false
            }
            else{
            $case_cnt=2
            }
           }

            3{
            <#$Global:ElapsedTime = 7200
            #$build_home = VerifyHomeScreen 
            $build_home = Pattern_Verification -CapturedImage "Home_Icon" -IconImage "Home_Icon"
            if($build_home -eq $true)
            {
            Start-Sleep -Seconds 5
            ConsoleOne_CtrllerPwr
            Start-Sleep -Seconds 5
           
            Quit_LaunchedGame_Relay -console $Global:Once
            $loop_status = $false
            }
            }#>
          
               
           
            
            }
         }
         }
         }     
         
           


         

