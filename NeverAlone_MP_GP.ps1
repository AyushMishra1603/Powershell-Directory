
####Set the notification timing to 30 seconds for all the profiles from Settings>Preferences>Notifications

Function HaloSA_MP_GP(){
  $game_title = "HaloSA_MP_GP"
  $tc_status = $false
  $loop_status = $true
  $case_cnt =0
  $Global:ElapsedTime = 90  
  $GameUpdateFound = $false

  

 <# Launch title on consoles1, join in multiplayer session through invite #>
  while($loop_status){

     switch($case_cnt){
         0 {  
            $isExpScrn = Launch_GameUsingSearch -game_name "Spar"        
            if($isExpScrn -eq $true){              
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step1>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 50
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step1>' -replacewithtext "Fail"
            }
          }
          
        1{
            $Global:ElapsedTime = 90
            $RDR2_Home= Pattern_Verification -CapturedImage "Halo_Home" -IconImage "Halo_Home"
            if($RDR2_Home -eq $true){
                ConsoleOne_CtrllerMenu     
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step2>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 50
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step2>' -replacewithtext "Fail"
            }   
         }

       2{
            $Global:ElapsedTime = 60
            $iscreateNew = Pattern_Verification -CapturedImage "Halo_Play" -IconImage "Halo_Play"
            if($iscreateNew -eq $true){
               Start-Sleep -Seconds 2
               $case_cnt++
               ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step3>' -replacewithtext "Success"
            }

            else{
                Write-Host "$game_title - Failed reach Test World" -ForegroundColor Red
                $case_cnt = 50
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step3>' -replacewithtext "Fail"
            }
         }   


         3{
            #SwitchConsole2
            HDMI_Console2 
            $isSwitch = VerifyHomeScreenConsole2
            if($isSwitch -eq $true){
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step4>' -replacewithtext "Success"
            }
            else{
                Write-Host "$game_title - Failed to Switch to Console 2" -ForegroundColor Red
                $case_cnt = 50
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step4>' -replacewithtext "Fail"
            }

         }

         4{ 
            #Launch game for console2
            $isExpScrn = Launch_GameUsingSearch_Console2 -game_name "Spar"
            $Global:ElapsedTime = 90
            $RDR2_Home= Pattern_Verification -CapturedImage "Halo_Home" -IconImage "Halo_Home"
            if($RDR2_Home -eq $true){   
                ConsoleTwo_CtrllerMenu
                $Global:ElapsedTime = 60
                $iscreateNew = Pattern_Verification -CapturedImage "Halo_Play" -IconImage "Halo_Play"
                if($iscreateNew -eq $true){ 
                    ConsoleTwo_CtrllerDwn
                    ConsoleTwo_CtrllerEnter
                    Start-Sleep -Seconds 2
                    ConsoleTwo_CtrllerDwn
                    ConsoleTwo_CtrllerRT
                    ConsoleTwo_CtrllerRT
                    ConsoleTwo_CtrllerRT
                    Start-Sleep -Seconds 2
                    ConsoleTwo_CtrllerRht
                    ConsoleTwo_CtrllerRT
                    ConsoleTwo_CtrllerRT
                    ConsoleTwo_CtrllerRT  
                    Start-Sleep -Seconds 2        
                    $case_cnt++
                    ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step5>' -replacewithtext "Success"              
                }
            }
            else{
                $case_cnt = 50
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step5>' -replacewithtext "Fail"
            }
 
         }
         5{ 
            HDMI_Console1
            #Send invite to Profile B from inside of the game
            GameInvite_HaloSA
            $Global:ElapsedTime = 5
            $isInviteError = Pattern_Verification -CapturedImage "InviteError" -IconImage "InviteError"
            if($isInviteError -eq $false){
                $case_cnt++
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step6>' -replacewithtext "Success"
            }
            else{
                Write-Host "$game_title - Failed to Send Invite" -ForegroundColor Red
                $case_cnt = 50
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step6>' -replacewithtext "Fail"
            }
         }

         6{
            HDMI_Console2
            #AcceptInvite
            HaloSA_JoinParty
            Start-Sleep -Seconds 10
            HDMI_Console1
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 10
            HDMI_Console2
            ConsoleTwo_CtrllerMenu
            HDMI_Console1
            ConsoleOne_CtrllerMenu
            HDMI_Console2
            ConsoleTwo_CtrllerMenu
            Start-Sleep -Seconds 2
            $case_cnt++
         }

         7{ 
            #Verify gameplay
            $Global:ElapsedTime = 150
            $isHaloSA_Gameplay_MP2 = Pattern_Verification -CapturedImage "Halo_Gameplay" -IconImage "Halo_Gameplay"
            if($isHaloSA_Gameplay_MP2 -eq $true){
                $case_cnt = 50
                $tc_status = $true
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step7>' -replacewithtext "Success"
            }
            else{
                $case_cnt = 50
                $tc_status = $false
                ReplaceTag -Document $Doc -FindText '<HaloSA_MP_GP_Step7>' -replacewithtext "Fail"
            }
         }


         50{
            Quit_LaunchedGame_Relay2 -console $Global2:Once
            HDMI_Console1                         
            Quit_LaunchedGame_Relay -console $Global:Once

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



FUnction GameInvite_HaloSA{

    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 2
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerRT
    Start-Sleep -Seconds 2
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRT  
    Start-Sleep -Seconds 2
    ConsoleOne_CtrllerY
    Start-Sleep -Seconds 3
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 2
    ConsoleOne_CtrllerEnter
    DynamicKeyBoard -dynamic_name "ActRetIN001"
    ConsoleOne_CtrllerMenu
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    ##ConsoleOne_CtrllerXbox
    ##ConsoleOne_CtrllerRht
    ##ConsoleOne_CtrllerRT
    ##ConsoleOne_CtrllerEnter
    ##ConsoleOne_CtrllerEnter
    ##Start-Sleep -Seconds 2
    ##DynamicKeyBoard -dynamic_name "ActRetIN001"
    ##Start-Sleep -Seconds 2
    ##ConsoleOne_CtrllerMenu
    ##Start-Sleep -Seconds 5
    ##ConsoleOne_CtrllerDwn
    ##ConsoleOne_CtrllerEnter
    ##Start-Sleep -Seconds 2
    ##ConsoleOne_CtrllerEnter
    ##Start-Sleep -Seconds 2
    ##ConsoleOne_CtrllerDwn
    ##ConsoleOne_CtrllerEnter
    ##Start-Sleep -Seconds 2
    ##ConsoleOne_CtrllerXbox

}

Function HaloSA_JoinParty{
    $Global:ElapsedTime = 30
    $isInviteToast = Pattern_Verification -CapturedImage "InviteToast" -IconImage "InviteToast"
    if($isInviteToast -eq $true){
       ConsoleTwo_CtrllerPwr
       Start-Sleep -Seconds 2
       ConsoleTwo_CtrllerY
       }
       return $isInviteToast
}