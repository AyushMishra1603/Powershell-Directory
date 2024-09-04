Function Run_PowerMode_LatencyCalculation{

  Init_VideoCmpr -Device $VideoCmprDevice  

  PowerMode_LatencyCalculation -power_mode $EnergySavings

  PowerMode_LatencyCalculation -power_mode $InstantOn
        
<#
    Verify_turnoff_restart -mode $Full_shutdown
    Start-Sleep -Seconds 60

    SwitchProfile

    Verify_turnoff_restart -mode $Restart_Now
    Start-Sleep -Seconds 60
#>
  
}



Function PowerMode_LatencyCalculation($power_mode){
 
 if( $Global:ExecutionStatus -eq $true){

    if($power_mode -eq $EnergySavings){
        $CapturedImage = "Xbox_EnergySaving"
        $IconImage = "Hi_icon1"
        $TestId = "TS01_TC3"
        $ExpectedText = "Energy-saving"
        $ExtractRegionLabel = "pwr_mode"
    }
    else{
        $CapturedImage = "Xbox_instantON"
        $IconImage = "Hi_icon1"
        $TestId = "TS01_TC4"
        $ExpectedText = "Instant-on"
        $ExtractRegionLabel = "pwr_mode"
    }

    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Select_PowerMode -power_mode $power_mode
    PowerOFFConsole 
    Start-Sleep -Seconds $Global:FifteenSecs
    PowerONConsole 

    RecordVideo_ffmpeg -video_name $CapturedImage -record_duration $Global:FifteenSecs
   
    Frame_Generation -video_name $CapturedImage
    $ret =  ComputeFrame_LinearSearch_PatternMatch -img_name $CapturedImage 
    if($Global:ExecutionStatus -eq $true)
    {
    if($power_mode -eq $EnergySavings){
     Update_Report -TestId $TestId -TestDescription "EnergySaving mode - PowerON Duration:$ret" -Status $Success
     }
     else{
     Update_Report -TestId $TestId -TestDescription "InstantON mode - PowerON Duration:$ret" -Status $Success
     }    
    }
    else{
     Update_Report -TestId $TestId -TestDescription "PowerON Duration not found" -Status $Failure
     }
  }
}



Function Select_PowerMode($power_mode){

    Navigate2PowerMode_Settings
    Enter2PowerMode_Settings
    
    if($power_mode -eq $EnergySavings){
        Remote_Enter -Nooftimes $Global:Once
        Remote_MoveUp -Nooftimes $Global:Once
        Remote_Enter -Nooftimes $Global:Once
        Remote_Exit -Nooftimes $Global:Once
    }
    else
    {
        Remote_Enter -Nooftimes $Global:Once
        Remote_MoveDown -Nooftimes $Global:Once
        Remote_Enter -Nooftimes $Global:Once
        Remote_Exit -Nooftimes $Global:Once
    }

    ReturnTo_HmePage
  
}


Function Navigate2PowerMode_Settings{
        Remote_OneGuide -Nooftimes $Global:Once
        Remote_MoveRight -Nooftimes $Global:Thrice
        Remote_MoveDown -Nooftimes $Global:Once
        Remote_Enter -Nooftimes $Global:Once
        Start-Sleep -Seconds 2
        Remote_MoveLeft -Nooftimes $Global:Twice
        Remote_MoveUpLong -Nooftimes 10 
        Remote_MoveDown -Nooftimes 6

}


Function Enter2PowerMode_Settings{
   
   Remote_MoveRight -Nooftimes $Global:Once
   Remote_MoveDown -Nooftimes $Global:Once
   Remote_Enter -Nooftimes $Global:Once
   Remote_MoveRight -Nooftimes $Global:Once
}

Function Enter2TurnoffMode_Settings{
  
   Remote_MoveRight -Nooftimes $Global:Once
   Remote_Enter -Nooftimes $Global:Once
   
}


Function ReturnTo_HmePage{
  
    Remote_MoveLeft -Nooftimes $Global:Twice
    Remote_MoveUpLong -Nooftimes 10 
    Remote_OneGuide -Nooftimes $Global:Once
    Remote_Enter -Nooftimes $Global:Once
   
}

Function PowerOFFConsole{
  
    Remote_Power -Nooftimes $Global:Once
    Remote_MoveUp -Nooftimes $Global:Once
    Remote_Enter -Nooftimes $Global:Once 
}

Function PowerONConsole{
   Remote_OneGuide -Nooftimes $Global:Once
}
  

Function Verify_turnoff_restart($mode){

 if( $Global:ExecutionStatus -eq $true){

    if($mode -eq $Full_shutdown){
        $CapturedImage = "Xbox_fullshutdown"
        $IconImage = "xbox_logo"
        $TestId = "TS01_TC1"
        $ExpectedText = "Full shutdown"
        $ExtractRegionLabel = "rst_mode"
    }
    else{
        $CapturedImage = "Xbox_restartnow"
        $IconImage = "xbox_logo"
        $TestId = "TS01_TC2"
        $ExpectedText = "Restart now"
        $ExtractRegionLabel = "rst_mode"
    }
    
    $Global:ElapsedTime = 30
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    

    Navigate2PowerMode_Settings
    Enter2TurnoffMode_Settings
    
    if($mode -eq $Full_shutdown){
        Remote_Enter -Nooftimes $Global:Once
    }
    else
    {
        Remote_MoveDown -Nooftimes $Global:Once
        Remote_Enter -Nooftimes $Global:Once
    }

    Remote_MoveLeft -Nooftimes $Global:Once
    Remote_Enter -Nooftimes $Global:Once


    $Global:ExecutionStatus = $true
    Start-Sleep -Seconds 10
 
      
    if($mode -eq $Full_shutdown) {
         Start-Sleep -Seconds 30
               PowerONConsole 
    }

    Start-Sleep -Seconds 2
    $ret =  VerifyPatternMatch

    if($ret -eq $true){
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }

      
    
  }
       

}