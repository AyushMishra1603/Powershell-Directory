Function ConsoleUpdate{
   
    ConsoleUpdatetoDevKit -report_ID 1    
}

Function ConsoleUpdatetoDevKit($report_ID){

  $action_title = "XboxUpdates"
  $tc_status = $true
  $loop_status = $true
  $case_cnt = 0
  $Global:ElapsedTime = 30
  $TestId = "TS01_TC" + $report_ID
  $GameUpdateFound = $false
  $extract_txt = " "
  $enddate = (Get-Date).tostring("yyyyMMdd")
  $filename = 'C:\XboxUpdateLog' + $enddate + '.txt'
  New-Item $filename -ItemType file
  
  while($loop_status){

     switch($case_cnt){
        0 {
        $hardupdate = Pattern_Verification -CapturedImage "HardUpdate" -IconImage "HardUpdate"
        if($hardupdate -eq $true){
        ConsoleOne_CtrllerEnter
        ConsoleOne_CtrllerEnter
        Set-Content $filename 'Update available , Xbox OS Update is in Progress... '
        $case_cnt = 20
        }
        else{
        Debug_Info 0 "No HardUpdate Available"
        $case_cnt++
           }
        }
        1 {
           #Power on Console if turned off
           $ret4 = Pattern_Verification -CapturedImage "Home_Icon" -IconImage "Home_Icon"
           if($ret4 -eq $true){
           $case_cnt++
           Debug_Info 1 "Console is ON"
           }
           else{
           Debug_Info 1 "Restarting Console For Update"
           PowerOFFConsole_Relay -console $Global:Once
           Start-Sleep -Seconds 30
           PowerONConsole_Relay -console $Global:Once
           Start-Sleep -Seconds 30
           $case_cnt++
           }
        }
        2 {
            ConsoleOne_CtrllerXbox

            $ret0 = Pattern_Verification -CapturedImage "Xbox_Hme_Logo" -IconImage "Xbox_Hme_Logo"
            if($ret0 -eq $true){
                        
            #Launch Xbox Info Using Search
            $ret = Launch_CheckSysInfo


           if($ret -eq $true){  
                $ret1 = Pattern_Verification -CapturedImage "System_Console_Page" -IconImage "System_Console_Page"
                if($ret1 -eq $true){
                $case_cnt++
                }
            }
            else{
                Debug_Info 2 "Need to restart settings"
                #Quit the Settings and start again
                Quit_LaunchedGame_Relay -console $Global:Once
                $case_cnt = 2
                
            }
            } 
          }

        3{
            #Capture Current OS Version
            Image_Capture -ImagePath $Global:CapturedImgPath   
            $extract_txt = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label "label1" -reg_label "osversion"
            
            
            #Go to Update Page
            Goto_Updates

            $ret2 = Pattern_Verification -CapturedImage "System_Update_Page" -IconImage "System_Update_Page" 
            if($ret2 -eq $true){
                #Start-Sleep -Seconds 30
                    $ret3 = Pattern_Verification -CapturedImage "Update_Available" -IconImage "Update_Available" 
                        if($ret3 -eq $true){
                ConsoleOne_CtrllerUp
                ConsoleOne_CtrllerEnter
                ConsoleOne_CtrllerEnter
                Set-Content $filename 'Update available , Xbox OS Update is in Progress... ' 
                $case_cnt = 20
                        }
                        else{
                        Debug_Info 3 "Update Unavailable"
                        Quit_LaunchedGame_Relay -console $Global:Once
                        Add-Content $filename "Update Unavailable , Xbox Currently on Below OS Version :"
                        Add-Content C:\XboxUpdateLog20190620.txt $extract_txt                        
                        }
            }                    
         } 
       20 {
       #Ending loop
       Debug_Info 3 "Update in Progress"
       $loop_status = $false 
       }
        default{
        $loop_status = $false
        } 
     }
  }
  return $tc_status
}

Function Launch_Updates{

ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
  
    return $true
}

Function Launch_CheckSysInfo{

ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
Start-Sleep -Seconds 3
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerEnter
  
    return $true
}

Function Goto_Updates{

ConsoleOne_CtrllerExit
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
  
    return $true
}


