#------------------------------ Remote Control Commands ----------------------------------------#

Function Remote_MoveRight($NoofTimes)  { ShortPress_Remote -EventName $Ctrller_Right -Nooftimes $NoofTimes }
Function Remote_MoveLeft($NoofTimes)   { ShortPress_Remote -EventName $Ctrller_Left -Nooftimes $NoofTimes  }
Function Remote_MoveDown($NoofTimes)   { ShortPress_Remote -EventName $Ctrller_Down -Nooftimes $NoofTimes  }
Function Remote_MoveUp($NoofTimes)     { ShortPress_Remote -EventName $Ctrller_Up -Nooftimes $NoofTimes    } 
Function Remote_Enter($NoofTimes)      { ShortPress_Remote -EventName $Ctrller_A -Nooftimes $NoofTimes     }
Function Remote_Exit($NoofTimes)       { ShortPress_Remote -EventName $Ctrller_B -Nooftimes $NoofTimes     }
Function Remote_Search($NoofTimes)     { ShortPress_Remote -EventName $Ctrller_Y -Nooftimes $NoofTimes     }
Function Remote_Menu($NoofTimes)       { ShortPress_Remote -EventName $Ctrller_Menu -Nooftimes $NoofTimes  }
Function Remote_Power($NoofTimes)      { Press_Remote -EventName $Ctrller_XboxOne -Nooftimes $NoofTimes      } 
Function Remote_OneGuide($NoofTimes)   { ShortPress_Remote -EventName $Ctrller_XboxOne -Nooftimes $NoofTimes }
Function Remote_DiscEject($NoofTimes)  { ShortPress_Remote -EventName $Ctrller_Eject -Nooftimes $NoofTimes   } 
Function Remote_MoveUpLong($NoofTimes) { LongPress_Remote -EventName $Ctrller_Up -Nooftimes $NoofTimes    }
Function Remote_LongPressX($NoofTimes) { LongPress_Remote -EventName $Ctrller_X -Nooftimes $NoofTimes    }

#------------------------------ Controller Specific Commands ----------------------------------------#

Function ConsoleOne_CtrllerDwn   {  Press_Ctrller -Data $ctrller1_Dwn  }
Function ConsoleOne_CtrllerUp    {  Press_Ctrller -Data $ctrller1_Up   }
Function ConsoleOne_CtrllerRht   {  Press_Ctrller -Data $ctrller1_Rt   }
Function ConsoleOne_CtrllerLft   {  Press_Ctrller -Data $ctrller1_Lt   }
Function ConsoleOne_CtrllerEnter {  Press_Ctrller -Data $ctrller1_A    }
Function ConsoleOne_CtrllerEnterDeepPress   {  Ctrller_DeepPress -Data $ctrller1_A }
Function ConsoleOne_CtrllerExit  {  Press_Ctrller -Data $ctrller1_B    }
Function ConsoleOne_CtrllerXbox  {  Press_Ctrller -Data $ctrller1_XBox }
Function ConsoleOne_CtrllerMenu  {  Press_Ctrller -Data $ctrller1_Menu }
Function ConsoleOne_CtrllerPwr   {  Ctrller_PowerOFF -Data $ctrller1_XBox }
Function ConsoleOne_CtrllerExitDeepPress   {  Ctrller_DeepPress -Data $ctrller1_B }
Function ConsoleOne_CtrllerLB    {  Press_Ctrller -Data $ctrller1_LB }
Function ConsoleOne_CtrllerRB    {  Press_Ctrller -Data $ctrller1_RB }
Function ConsoleOne_CtrllerX    {  Press_Ctrller -Data $ctrller1_X }
Function ConsoleOne_CtrllerXDeepPress    {  Ctrller_DeepPress -Data $ctrller1_X }
Function ConsoleOne_CtrllerY    {  Press_Ctrller -Data $ctrller1_Y }
Function ConsoleOne_Ctrllerview    {  Press_Ctrller -Data $ctrller1_View }
Function ConsoleOne_CtrllerLT    {  PressLeftThumb -waittime 500  }
Function ConsoleOne_CtrllerRT   {  PressRightThumb -waittime 500 }

Function ConsoleTwo_CtrllerDwn   {  Press_Ctrller -Data $ctrller2_Dwn  }
Function ConsoleTwo_CtrllerUp    {  Press_Ctrller -Data $ctrller2_Up   }
Function ConsoleTwo_CtrllerRht   {  Press_Ctrller -Data $ctrller2_Rt   }
Function ConsoleTwo_CtrllerLft   {  Press_Ctrller -Data $ctrller2_Lt   }
Function ConsoleTwo_CtrllerEnter {  Press_Ctrller -Data $ctrller2_A    }
Function ConsoleTwo_CtrllerExit  {  Press_Ctrller -Data $ctrller2_B    }
Function ConsoleTwo_CtrllerXbox  {  Press_Ctrller -Data $ctrller2_XBox }
Function ConsoleTwo_CtrllerMenu  {  Press_Ctrller -Data $ctrller2_Menu }
Function ConsoleTwo_CtrllerPwr   {  Ctrller_PowerOFF -Data $ctrller2_XBox }

#------------------------------ Analog Specific Commands ----------------------------------------#


Function MoveLeftJoystick_Left($waittime) { PressButtonDP $JoyStick1_LR $Joystick_Left $false $waittime  }
Function MoveLeftJoystick_Right($waittime) { PressButtonDP $JoyStick1_LR $Joystick_Right $false $waittime   }
Function MoveLeftJoystick_Up($waittime) { PressButtonDP $JoyStick1_UD $Joystick_UP $false $waittime   }
Function MoveLeftJoystick_Down($waittime) { PressButtonDP $JoyStick1_UD $Joystick_Down $false $waittime   }

Function MoveRightJoystick_Left($waittime) { PressButtonDP $JoyStick2_LR $Joystick_Left $false $waittime  }
Function MoveRightJoystick_Right($waittime) { PressButtonDP $JoyStick2_LR $Joystick_Right $false $waittime   }
Function MoveRightJoystick_Up($waittime) { PressButtonDP $JoyStick2_UD $Joystick_UP $false $waittime   }
Function MoveRightJoystick_Down($waittime) { PressButtonDP $JoyStick2_UD $Joystick_Down $false $waittime   }

Function HoldLeftJoystick_Left($waittime) { PressButtonDP $JoyStick1_LR $Joystick_Left $true $waittime  }
Function HoldLeftJoystick_Right($waittime) { PressButtonDP $JoyStick1_LR $Joystick_Right $true $waittime  }
Function HoldLeftJoystick_Up($waittime) { PressButtonDP $JoyStick1_UD $Joystick_UP $true $waittime   }
Function HoldLeftJoystick_Down($waittime) { PressButtonDP $JoyStick1_UD $Joystick_Down $true $waittime   }

Function HoldRightJoystick_Left($waittime) { PressButtonDP $JoyStick2_LR $Joystick_Left $true $waittime  }
Function HoldRightJoystick_Right($waittime) { PressButtonDP $JoyStick2_LR $Joystick_Right $true $waittime   }
Function HoldRightJoystick_Up($waittime) { PressButtonDP $JoyStick2_UD $Joystick_UP $true $waittime   }
Function HoldRightJoystick_Down($waittime) { PressButtonDP $JoyStick2_UD $Joystick_Down $true $waittime   }

Function PressRightThumb($waittime)    { PressButtonDP $Left_Thumb 0.02 $false $waittime    }
Function PressLeftThumb($waittime)    { PressButtonDP $Right_Thumb 0.02 $false $waittime    }

Function HoldLeftThumb($waittime)    { PressButtonDP $Left_Thumb 0.02 $true $waittime    }
Function HoldRightThumb($waittime)    { PressButtonDP $Right_Thumb 0.02 $true $waittime    }

Function ReleaseController($HoldedButton) { ReleaseButtonDP -channel $HoldedButton  }


#------------------------------ KeyBoardMouse Simulation Commands ----------------------------------------#


Function KBM_KeyDwn   {  SendKB_SpecialKeyEvent -event "Down" }
Function KBM_KeyUp    {  SendKB_SpecialKeyEvent -event "Up"   }
Function KBM_KeyRht   {  SendKB_SpecialKeyEvent -event "Right"}
Function KBM_KeyLft   {  SendKB_SpecialKeyEvent -event "Left" }
Function KBM_KeyEnter {  SendKB_SpecialKeyEvent -event "Enter" }
Function KBM_KeyExit  {  SendKB_SpecialKeyEvent -event "Esc" }

#------------------------------ Set time delay ----------------------------------------#

Function Set_FixedDelay($DelayTime)       {    sleep -Seconds $DelayTime   }
Function Set_MillisecsDelay($DelayTime)   {    sleep -Milliseconds $DelayTime   }


#------------------------------ Test Controller ----------------------------------------#

Function test-Controller{
  
    ConsoleOne_CtrllerDwn  
    ConsoleOne_CtrllerUp   
    ConsoleOne_CtrllerRht  
    ConsoleOne_CtrllerLft  
    ConsoleOne_CtrllerEnter
    ConsoleOne_CtrllerExit 
    ConsoleOne_CtrllerXbox 
    ConsoleOne_CtrllerMenu 
    ConsoleOne_CtrllerLB   
    ConsoleOne_CtrllerRB   
    ConsoleOne_CtrllerX    
    ConsoleOne_CtrllerY
    ConsoleOne_Ctrllerview
    

    MoveLeftJoystick_Left -waittime 1000
    MoveLeftJoystick_Right -waittime 1000
    MoveLeftJoystick_Up -waittime 100
    MoveLeftJoystick_Down -waittime 100
    MoveRightJoystick_Left -waittime 100
    MoveRightJoystick_Right -waittime 100
    MoveRightJoystick_Up -waittime 1000
    MoveRightJoystick_Down -waittime 100
    PressLeftThumb -waittime 1000
    PressRightThumb -waittime 1000
    

    MoveLeftJoystick_Left -waittime 5000

    HoldLeftJoystick_Left -waittime 1000
    Start-Sleep -Seconds 5
    ReleaseController -HoldedButton $JoyStick1_LR
    ReleaseController -HoldedButton $Left_Thumb

}

#------------------------------ debug error information ----------------------------------------#


Function Debug_Info ($step_ID,$case_Name)
{
    Write-Host "Fail at Step" $step_ID ":" $TestCase_Name -ForegroundColor Yellow
}

#-----------------------------------------------------------------------------------------------#


Function Press_Remote($EventName,[int]$Nooftimes){        
        for($i=0;$i -lt $Nooftimes;$i++)
        {
            $eDAT_USBUIRT.Transmit($EventName,[UsbUirt.CodeFormat]::Pronto ,$Global:Five,0)
            Set_MillisecsDelay -DelayTime $Global:Hundredms
       
        }
        
     #   Set_FixedDelay -DelayTime $Global:OneSec 
}

#-----------------------------------------------------------------------------------------------#


Function LongPress_Remote($EventName,$Nooftimes){        
       
        $eDAT_USBUIRT.Transmit($EventName,[UsbUirt.CodeFormat]::Pronto ,$Nooftimes,0)
        Set_MillisecsDelay -DelayTime $Global:Hundredms            
        Set_FixedDelay -DelayTime $Global:OneSec 
}

#-----------------------------------------------------------------------------------------------#


Function ShortPress_Remote($EventName,[int]$Nooftimes){        
        for($i=0;$i -lt $Nooftimes;$i++)
        {
            $eDAT_USBUIRT.Transmit($EventName,[UsbUirt.CodeFormat]::Pronto ,$Global:Once,0)
            Set_MillisecsDelay -DelayTime $Global:Hundredms
       
        }
       
        Set_FixedDelay -DelayTime $Global:OneSec
}

#-----------------------------------------------------------------------------------------------#


Function Captured_ImgPath($img_name){
     $ImagePath = [System.IO.Path]::Combine( $CapturedImageFolder ,$img_name +".bmp" )
     $Global:CapturedImgPath = $ImagePath
}

#-----------------------------------------------------------------------------------------------#


Function Icon_ImgPath($img_name){
     $Icon_ImgPath   =  [System.IO.Path]::Combine( $IconImageFolder, $img_name + ".bmp" ) 
     $Global:IconImgPath = $Icon_ImgPath
}

#-------------------------Capture & Compare using OCR ---------------------------------------#


Function VerifyOCRTextMatch($ExtractRegionLabel,$PageLabel,$ExpectedText){

   $stopwatch = [system.diagnostics.stopwatch]::StartNew()
    $Verify_mins = $false
   if($Global:ElapsedTime -ge 60){
        $ElapsedMin = $Global:ElapsedTime / 60
        $Verify_mins = $true
   }
   while($true)
   {
       Image_Capture -ImagePath $Global:CapturedImgPath   
       $extract_txt = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $PageLabel -reg_label $ExtractRegionLabel
       if($extract_txt -eq $ExpectedText)
       {
          $stopwatch.Stop()
          return $true
         
       }
       
       if($stopwatch.Elapsed.Seconds -gt $Global:ElapsedTime)
       {
            $stopwatch.Stop()
            return $false
            
       }
       if($Verify_mins -eq $true){
           if($stopwatch.Elapsed.Minutes -ge $ElapsedMin){
              $stopwatch.Stop()
                return $false     
           }
       }
   }
}

#-------------------------Capture & Compare using Pattern Match ------------------------------------------#


Function VerifyPatternMatch {
    #Write-Host $Global:ElapsedTime

    $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()

    # Display the current IconImage at the top of the console. ID is arbitrary.
    $IconImage = Split-Path -Leaf $Global:IconImgPath
    # Setup for displaying a progress bar of the time remaining
    $FullTimeInSeconds = $Global:ElapsedTime
    $EndTime = (Get-Date) + (New-TimeSpan -Seconds $FullTimeInSeconds)
    Write-Progress -Id 2 -Activity "Running Pattern Verification" -Status "Checking for $IconImage" -SecondsRemaining $FullTimeInSeconds

    $result = $false
    do
    { # Run pattern match at least once
        $ret1 = Image_Capture -ImagePath $Global:CapturedImgPath
        if($ret1)
        {
            # Update progress bar
            $secondsremaining = $EndTime - (Get-Date)
            $PercentComplete = 100 - (($secondsremaining.Seconds / $FullTimeInSeconds) * 100)
            if ($PercentComplete -gt 100) 
            { # Clamp PercentComplete (because System.Math.Clamp is only in .NET Core 2/.NET 5...)
                $PercentComplete = 100
            } elseif ($PercentComplete -lt 0)
            { # Shouldn't happen, but it is very important that Write-Progress does not throw an error
                $PercentComplete = 0
            }
            Write-Progress -Id 2 -Activity "Running Pattern Verification" -Status "Checking for $IconImage" -SecondsRemaining $secondsremaining.Seconds -PercentComplete $PercentComplete
            
            $ret = Match_Pattern -Cap_Img $Global:CapturedImgPath -Icon_Img $Global:IconImgPath
        
            if($ret.Data.MatchFound -eq $true) 
            {
                $result = $true
                break
            } 
        }   
    } while($stopwatch.Elapsed.TotalSeconds -le $FullTimeInSeconds)

    $stopwatch.Stop()

    # Clear progress bar
    Write-Progress -Id 2 -Completed -Activity "Running Pattern Verification" -Status "Checking for $IconImage" -PercentComplete 100

    return $result
}
#-----------------------------------------------------------------------------------------------#

<#
Function VerifyPatternMatch_custom {
   $stopwatch = [system.diagnostics.stopwatch]::StartNew()
 #  Write-Host $Global:ElapsedTime
   $Verify_mins = $false
   if($Global:ElapsedTime -ge 60){
        $ElapsedMin = $Global:ElapsedTime / 60
        $Verify_mins = $true
   }

   while($true)
   {
        $ret1 = Image_Capture -ImagePath $Global:CapturedImgPath
        if($ret1)
        {
            $ret = Match_Pattern_custom -Cap_Img $Global:CapturedImgPath -Icon_Img $Global:IconImgPath
        
            if($ret.Data.MatchFound -eq $true) 
            {
                $stopwatch.Stop()
                return $true
            } 
        }
       if($stopwatch.Elapsed.Seconds -gt $Global:ElapsedTime)
       {
            $stopwatch.Stop()
            return $false          
       }

       if($Verify_mins -eq $true){
           if($stopwatch.Elapsed.Minutes -ge $ElapsedMin){
              $stopwatch.Stop()
                return $false     
           }
       }
   #    Write-Host "Secs:" $stopwatch.Elapsed.Seconds
   #    Write-Host "Mins:" $stopwatch.Elapsed.Minutes
       
   }
}
#>
#-----------------------------------------------------------------------------------------------#


Function VerifyPatternMatch_PC {
   $stopwatch = [system.diagnostics.stopwatch]::StartNew()
    $Verify_mins = $false
   if($Global:ElapsedTime -ge 60){
        $ElapsedMin = $Global:ElapsedTime / 60
        $Verify_mins = $true
   }
   while($true)
   {
        #$ret1 = Image_Capture -ImagePath $Global:CapturedImgPath
        $ret1 = GetPrintscreenImage -ImagePath $Global:CapturedImgPath
        
        if($ret1)
        {
            $ret = Match_Pattern -Cap_Img $Global:CapturedImgPath -Icon_Img $Global:IconImgPath
        
            if($ret.Data.MatchFound -eq $true) 
            {
                $stopwatch.Stop()
                return $true
           
            }
        }
     
       if($stopwatch.Elapsed.Seconds -gt $Global:ElapsedTime)
       {
            $stopwatch.Stop()
            return $false          
       }
       if($Verify_mins -eq $true){
           if($stopwatch.Elapsed.Minutes -ge $ElapsedMin){
              $stopwatch.Stop()
                return $false     
           }
       }
   }
}

#-----------------------------------------------------------------------------------------------#


Function Pattern_Verification($CapturedImage,$IconImage){

Captured_ImgPath -img_name $CapturedImage
Icon_ImgPath -img_name $IconImage

$ret = VerifyPatternMatch
Write-host "-------------------------------------" -ForegroundColor Green
 
return $ret
}

#-----------------------------------------------------------------------------------------------#


Function Pattern_Verification_custom($CapturedImage,$IconImage){

Captured_ImgPath -img_name $CapturedImage
Icon_ImgPath -img_name $IconImage

$ret = VerifyPatternMatch_custom
return $ret
}

#-----------------------------------------------------------------------------------------------#



Function Update_Report($TestId,$TestDescription,$Status){
      [string] $TestcaseID = "eDAT_XBOXONE_" + $TestId
     UpdateReport -testID $TestcaseID -testDescription $TestDescription -testResult $Status -Image1 $Global:CapturedImgPath -Image2 $Global:IconImgPath
  
     Write-Host $TestId + $TestDescription -ForegroundColor Green 
     
     Write-Host "---------------------------------------------" -ForegroundColor "Green" 
}

#-----------------------------------------------------------------------------------------------#


Function UpdateReport_SystemInfo($TestId,$TestDescription,$Status){
     UpdateReport -testID $TestId -testDescription $TestDescription -testResult $Status -Image2 $Global:CapturedImgPath 
  
     Write-Host $TestId + $TestDescription -ForegroundColor Green 
     
     Write-Host "---------------------------------------------" -ForegroundColor "Green" 
}

#-----------------------------------------------------------------------------------------------#


Function Image_Capture($ImagePath){
    
    $Status= ImageCapture -DeviceName $ImageDevice -ImagePath $ImagePath
    StatusCheck ( $Status )
    return $Status.IsSuccess
}

#-----------------------------To Printscreen from Automation PC ---------------------------------------#


Function PrintScreen($Imagename){
  Captured_ImgPath -img_name $Imagename
  $ret = GetPrintscreenImage -ImagePath $Global:CapturedImgPath
  
}
#-----------------------------------------------------------------------------------------------#


Function Get_Color($ImagePath){
    $Status= ImageCapture -DeviceName $ImageDevice -ImagePath $ImagePath
    StatusCheck ( $Status )
}

#-----------------------------To Switch between Consoles ---------------------------------------------#


Function Switch_Console($Switch){
   ShortPress_Remote -EventName $Switch -Nooftimes $Global:Once
}

#-----------------------------------------------------------------------------------------------#


#Function Trigger_Relay($PortNo,$Data){
Function Press_Ctrller($Data){
  WriteDatainHex -SerialPort $SerialLabel1 -bytData $Data
  Set_MillisecsDelay -DelayTime $Global:Hundredms
  Reset_RelayPort -PortNo $Data[0]
}

#-----------------------------------------------------------------------------------------------#


Function Ctrller_PowerOFF($Data){
  WriteDatainHex -SerialPort $SerialLabel1 -bytData $Data
  Set_MillisecsDelay -DelayTime 3000
  Reset_RelayPort -PortNo $Data[0]
}

Function Ctrller_DeepPress($Data){
  WriteDatainHex -SerialPort $SerialLabel1 -bytData $Data
  Set_MillisecsDelay -DelayTime 10000
  Reset_RelayPort -PortNo $Data[0]
}

#-----------------------------------------------------------------------------------------------#



Function Reset_RelayPort($PortNo){
  $bytData = [Byte[]]($PortNo,$zero) 
  WriteDatainHex -SerialPort $SerialLabel1 -bytData $bytData
  Set_FixedDelay -DelayTime $Global:OneSec
}

#-----------------------------------------------------------------------------------------------#


Function StatusCheck ( $Status ){
    if ( $Status.IsSuccess )
    {
        Write-Host $Status.IsSuccess
        Write-Host $Status.StatusMessage
    }
    else
    {
        Write-Host $Status.IsSuccess
        Write-Host $Status.StatusMessage
        
    }
}

#-----------------------------------------------------------------------------------------------#


Function Frame_Generation($video_name){

 $Record_VideoPath = [System.IO.Path]::Combine( $VideoFolderPath ,$video_name+".avi" )
 Generate_Frames -Device $VideoCmprDevice -VideoPath $Record_VideoPath
}

#-----------------------------------------------------------------------------------------------#


Function RecordVideo_ffmpeg($video_name,$record_duration){

 $record_duration = "00:00:"+ $record_duration
 $Record_VideoPath = [System.IO.Path]::Combine( $VideoFolderPath ,$video_name+".avi" )
.$Video_Recording -y -f dshow -video_size "1920x1080" -framerate "30" -i audio=$audiodev':'video=$videodev -t $record_duration $Record_VideoPath 

}

#-----------------------------------------------------------------------------------------------#


Function Video_Recording{

DoRealTimeMouseActions -x 265 -y 77 -action "left"
}
#-----------------------------------------------------------------------------------------------#


Function Windows_Recording
{
SendKB_CombinationKeyEvent("WindowsKey+Alt+R")
}

#-----------------------------------------------------------------------------------------------#


Function Open_Avermedia{  

    DoRealTimeMouseActions -x 20 -y 747 -action "left"
    Set_FixedDelay -DelayTime $Global:TwoSecs
    SendKB_TextEvent -text "avermedia"
    Set_FixedDelay -DelayTime $Global:TwoSecs
    SendKB_SpecialKeyEvent -event "Enter"
    Set_FixedDelay -DelayTime $Global:FiveSecs
    DoRealTimeMouseActions -x 27 -y 77 -action "left" 
    Set_FixedDelay -DelayTime 8
    
}

#-----------------------------------------------------------------------------------------------#


Function Exit_AverMedia{

    Set_FixedDelay -DelayTime $Global:TwoSecs
    DoRealTimeMouseActions -x 27 -y 77 -action "left"
    <#Sleep -Seconds 2
    DoRealTimeMouseActions -x 1340 -y 10 -action "left"
    Sleep -Seconds 2#>

    Set_FixedDelay -DelayTime $Global:TwoSecs
    DoRealTimeMouseActions -x 19 -y 22 -action "left"
    Set_FixedDelay -DelayTime $Global:TwoSecs
 #   Sleep -Seconds 2
    DoRealTimeMouseActions -x 15 -y 83 -action "left"
 #   Sleep -Seconds 2
    Set_FixedDelay -DelayTime $Global:TwoSecs

  
}

#-------------------------- To trigger text to Voice Command-----------------------------------------#

#Voice input
Function VoiceTrigger ($VoiceText)
{
$VoiceInput.Speak('Hey cortana ')
Start-Sleep -Milliseconds 1000
$VoiceInput.Speak($VoiceText)

}

#-------------------------- To trigger text to Speech -----------------------------------------#

#Voice input
Function TextToSpeech ($VoiceText)
{
#$VoiceInput.Speak('Hey cortana ')
Start-Sleep -Milliseconds 1000
$VoiceInput.Speak($VoiceText)

}

#-----------------------------To CApture Image using Camera / Capture device-------------------------------------#


Function GetImage($CapturedImageName){
 Captured_ImgPath -img_name $CapturedImageName
 Image_Capture -ImagePath $Global:CapturedImgPath
}


#-------------------------Calc Latency using OCR - Linear Search ---------------------------------------#


Function ComputeFrame_LinearSearch_OCR($video_name,$Exp_text,$RegionLabel){

   $ImgFolderPath = [System.IO.Path]::Combine( $ImagesPath , $video_name)
    [string[]] $dirs = [System.IO.Directory]::GetFiles($ImgFolderPath, "*.bmp");
    Write-Host "Total Image Files : " $dirs.Count
    $time_span = 0

    for($i=1;$i -le $dirs.Count;$i++)
    {
       $ImgPath1 = [System.IO.Path]::Combine( $ImgFolderPath , $video_name + "$i.bmp")
       Write-Host $ImgPath1
     #  $extract_txt = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $PageLabel -reg_label $ExtractRegionLabel
       $extract_txt = ExtractTessaractSingle -img_path $ImgPath1 -label $Global:RegLabel -reg_label $RegionLabel
       if($extract_txt -eq $Exp_text)
       {         
            $time_span = $i / 60
            $Global:CapturedImgPath = $ImgPath1
            Write-Host "Time Taken =" $time_span "secs" -ForegroundColor "Green" 
            $Global:ExecutionStatus = $true               
                break;
        } 
        
    }
    if($Global:ExecutionStatus -eq $false)
    {
     $Global:CapturedImgPath = $ImgPath1
    }
    return $time_span
}

#--------------------Calc Latency using Pattern MAtch  - Linear Search --------------------------------#


Function ComputeFrame_LinearSearch_PatternMatch($img_name) {

   $ImgFolderPath = [System.IO.Path]::Combine( $ImagesPath , $img_name)
    [string[]] $dirs = [System.IO.Directory]::GetFiles($ImgFolderPath, "*.bmp");
    Write-Host "Total Image Files : " $dirs.Count
    $time_span = 0

    for($i=1;$i -le $dirs.Count;$i++)
    {
       $ImgPath1 = [System.IO.Path]::Combine( $ImgFolderPath , $img_name + "$i.bmp")
       Write-Host $ImgPath1

        $ret = Match_Pattern -Cap_Img $ImgPath1 -Icon_Img $Global:IconImgPath
       if($ret.Data.MatchFound -eq $true)
       {         
            $time_span = $i / 60
            $Global:CapturedImgPath = $ImgPath1
          Write-Host "Time Taken =" $time_span "secs" -ForegroundColor "Green" 
          $Global:ExecutionStatus = $true               
                break;
        }
        else{
        $Global:ExecutionStatus = $false
        } 
        
    }
   if($Global:ExecutionStatus -eq $false)
    {
     $Global:CapturedImgPath = $ImgPath1
    }
   return $time_span
}



#------------------------ Calculate Latency using OCR - Binary Search ---------------------------------#

#Compute the Frame using Binary search with OCR
Function ComputeFrame_BinarySearch_OCR($video_name,$Exp_text,$RegionLabel){
    $ImgFolderPath = [System.IO.Path]::Combine( $ImagesPath , $video_name)
    
    [string[]] $dirs = [System.IO.Directory]::GetFiles($ImgFolderPath, "*.bmp");
    $dirsCopy=@(0..$dirs.Count)
    for($i=1;$i -le $dirs.Count;$i++){
    $dirsCopy[$i] = $ImgFolderPath+"\"+$video_name+$i+".bmp";
    }
    Write-Host "Total Image Files : " $dirsCopy.Count
    $time_span = 0
    $midCheck=[Math]::Floor((0+$dirsCopy.Length)/2)
    $splittedHalfArray= Split-Array -InputObject $dirsCopy -SplitSize $midCheck
    $endIndex=$SplittedHalfArray[1].Length-1
    $startIndex=0
     #$fileName=[array]::indexof($dirs,$dirs[$midCheck])
    $fileName=$dirsCopy[$midCheck-1]

    #Extract Middle point check in $dir
    $ImgPath1 = [System.IO.Path]::Combine( $ImgFolderPath , $fileName)
    $extract_txt = ExtractTessaractSingle -img_path $ImgPath1 -label $Global:RegLabel -reg_label $RegionLabel
       if($extract_txt -eq $Exp_text)
       {    $inspectedIndex=[array]::indexof($dirsCopy,$fileName)    
            $time_span = $inspectedIndex / 60
            $Global:CapturedImgPath = $ImgPath1
            Write-Host "Time Taken =" $time_span "secs" -ForegroundColor "Green" 
            $Global:ExecutionStatus = $true               
            return $time_span
        } 

    while($startIndex -le $endIndex ){
    $middleIndex=$startIndex + [Math]::Floor(($endIndex -$startIndex)/2)

    if($startIndex -ne $endIndex){
       $fileName=$SplittedHalfArray[1][$middleIndex]

       $ImgPath1 = [System.IO.Path]::Combine( $ImgFolderPath , $fileName)

       $extract_txt = ExtractTessaractSingle -img_path $ImgPath1 -label $Global:RegLabel -reg_label $RegionLabel

       if($extract_txt -eq $Exp_text)
       {            

           $inspectedIndex=[array]::indexof($dirsCopy,$fileName)
       
            while($true){
            $inspectedIndex=$inspectedIndex-1
            $fileName=$dirsCopy[$inspectedIndex]
            $ImgPath1 = [System.IO.Path]::Combine( $ImgFolderPath , $fileName)
            $extract_txt = ExtractTessaractSingle -img_path $ImgPath1 -label $Global:RegLabel -reg_label $RegionLabel

            
            if($extract_txt -ne $Exp_text){
            $inspectedIndex=[array]::indexof($dirsCopy,$fileName)  

            #testing
            #write-host $inspectedIndex+1
               
            $time_span = ($inspectedIndex+1) / 60
            $Global:CapturedImgPath = $ImgPath1
            Write-Host "Time Taken =" $time_span "secs" -ForegroundColor "Green" 
            $Global:ExecutionStatus = $true               
            return $time_span
            }
            }
        } 
       
    }

    $startIndex=$middleIndex+1
    }
    if($Global:ExecutionStatus -eq $false)
    {
     $Global:CapturedImgPath = $ImgPath1
    }

    return $time_span

}

#-------------------------- Calculate Latency using PAttern MAtch - Binary Search -----------------------------------------#

#Compute the Frame using Binary search with Pattern match
Function ComputeFrame_BinarySearch_PatternMatch($img_name) {
   $ImgFolderPath = [System.IO.Path]::Combine( $ImagesPath , $img_name)
   #Testing purpose
  # $IconImage = "TestingSearch"
   #Icon_ImgPath -img_name $IconImage
   #$video_name="console1_HmeScreen"
    [string[]] $dirs = [System.IO.Directory]::GetFiles($ImgFolderPath, "*.bmp");
     $dirsCopy=@(0..$dirs.Count)
    for($i=1;$i -le $dirs.Count;$i++){
    $dirsCopy[$i] = $ImgFolderPath+"\"+$img_name+$i+".bmp";    

#    $dirsCopy[$i] = $ImgFolderPath+"\"+$video_name+$i+".bmp";    
    }
    Write-Host "Total Image Files : " $dirsCopy.Count
    $time_span = 0
    $midCheck=[Math]::Floor((0+$dirsCopy.Length)/2)
    $splittedHalfArray= Split-Array -InputObject $dirsCopy -SplitSize $midCheck
    $endIndex=$SplittedHalfArray[1].Length-1
    $startIndex=0
    $fileName=$dirsCopy[$midCheck-1]



    #retrieve Middle point and check the expected text is occured or not using pattern match 
    $ImgPath1 = [System.IO.Path]::Combine( $ImgFolderPath , $fileName)
    $ret = Match_Pattern -Cap_Img $ImgPath1 -Icon_Img $Global:IconImgPath
       if($ret.Data.MatchFound -eq $true)
       {    $inspectedIndex=[array]::indexof($dirsCopy,$fileName) 
            #Testing purpose
            #write-host $inspectedIndex+1    
            $time_span = $inspectedIndex / 60
            $Global:CapturedImgPath = $ImgPath1
            Write-Host "Time Taken =" $time_span "secs" -ForegroundColor "Green" 
            $Global:ExecutionStatus = $true               
            return $time_span
        } 

    #Looping when the expected text is occured or not using pattern match 
    while($startIndex -le $endIndex ){
    $middleIndex=$startIndex + [Math]::Floor(($endIndex -$startIndex)/2)
    if($startIndex -ne $endIndex){
       $fileName=$SplittedHalfArray[1][$middleIndex]
       $ImgPath1 = [System.IO.Path]::Combine( $ImgFolderPath , $fileName)
       $ret = Match_Pattern -Cap_Img $ImgPath1 -Icon_Img $Global:IconImgPath
       if($ret.Data.MatchFound -eq $true)
       { 
           
           #Find Matched array index
           $inspectedIndex=[array]::indexof($dirsCopy,$fileName)
            write-host $dirsCopy[$inspectedIndex -1]
       
            while($true){
            $inspectedIndex=$inspectedIndex-1
            $fileName=$dirsCopy[$inspectedIndex]
            $ImgPath1 = [System.IO.Path]::Combine( $ImgFolderPath , $fileName)
            $extract_txt = Match_Pattern -Cap_Img $ImgPath1 -Icon_Img $Global:IconImgPath
            #Find not Matched array index
            if($ret.Data.MatchFound -ne $true){
            $inspectedIndex=[array]::indexof($dirsCopy,$fileName)
            #Write-Host $inspectedIndex+1     
            $time_span = ($inspectedIndex+1) / 60
            $Global:CapturedImgPath = $ImgPath1
            Write-Host "Time Taken =" $time_span "secs" -ForegroundColor "Green" 
            $Global:ExecutionStatus = $true           
            return $time_span
            }
            }
        } 
       
    }

    $startIndex=$middleIndex+1
    }
    if($Global:ExecutionStatus -eq $false)
    {
     $Global:CapturedImgPath = $ImgPath1
    }  
    
    return $time_span

}
#-----------------------------------------------------------------------------------------------#


#Split the array by splitsize
Function Split-Array ([object[]]$InputObject,[int]$SplitSize){
$length=$InputObject.Length
for ($Index = 0; $Index -lt $length; $Index += $SplitSize)
{
#, encapsulates result in array
#-1 because we index the array from 0
,($InputObject[$index..($index+$splitSize-1)])
}
}

#------------------------- Switch OFF Console using Controller ---------------------------------------------#


Function PowerOFFConsole_Relay($console){
  
  if($console -eq $Global:Once){
    ConsoleOne_CtrllerPwr
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerEnter
    }
    else{
        ConsoleTwo_CtrllerPwr
        ConsoleTwo_CtrllerUp
        ConsoleTwo_CtrllerEnter
    }
}

#-------------------------- Switch ON Console using Controller ----------------------------------#


Function PowerONConsole_Relay($console){
    if($console -eq $Global:Once){
          ConsoleOne_CtrllerPwr
     }
     else{
          ConsoleTwo_CtrllerPwr
     }
}

#------------------------To Quit from Launched Game using IR Command ------------------------------------#

Function QuitGame_IR{

    Remote_OneGuide -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:OneSec
    
    Remote_MoveDown -Nooftimes $Global:Thrice
    
    Remote_Menu -Nooftimes $Global:Once        
  #  Set_FixedDelay -DelayTime $Global:OneSec

    Remote_MoveDown -Nooftimes $Global:Fource
    Set_FixedDelay -DelayTime $Global:OneSec
    Remote_Enter -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:OneSec

    Remote_OneGuide -Nooftimes $Global:Once
}

#------------------------ To Quit from Launched Game using Controler -------------------------------------#
# Console1

Function Quit_LaunchedGame_Relay($console){
$Global:ElapsedTime = 30
if($console -eq $Global:Once){
     ConsoleOne_CtrllerXbox
     $ret = Pattern_Verification -CapturedImage "Xbox_oneguidescreen" -IconImage "Xbox_Hme_Logo2"

 

     if($ret -eq $true){
         ConsoleOne_CtrllerDwn
         ConsoleOne_CtrllerDwn
         #Start-Sleep -Seconds 1
         ConsoleOne_CtrllerMenu

 

         $ret = Pattern_Verification -CapturedImage "Xbox_gamequite" -IconImage "Quit_GameIcon"

 

         if($ret -eq $true){
             PressRightThumb -waittime 100        
             ConsoleOne_CtrllerEnter
         }
         Start-Sleep -Seconds 1
         ConsoleOne_CtrllerXbox
         Start-Sleep -Seconds 2
         $ret1 = Pattern_Verification -CapturedImage "Home_Icon" -IconImage "Home_Icon"                                 
        if($ret1 -eq $true){
           Write-Host "Successfully Exits Game"
        }
        else
        {
            Write-Host "Unable to Exit Game"             
        }
        return $ret1
     }
 }

 # Console2

 else{
     ConsoleTwo_CtrllerXbox
     $ret = Pattern_Verification -CapturedImage "Xbox_oneguidescreen" -IconImage "Xbox_Hme_Logo2"

     if($ret -eq $true){
         ConsoleTwo_CtrllerDwn
         ConsoleTwo_CtrllerDwn
         Start-Sleep -Seconds 1
         ConsoleTwo_CtrllerMenu

         $ret = Pattern_Verification -CapturedImage "Xbox_gamequite" -IconImage "Quit_GameIcon"

         if($ret -eq $true){
             PressRightThumb -waittime 100 
             ConsoleTwo_CtrllerEnter
         }
         Start-Sleep -Seconds 1 
         ConsoleTwo_CtrllerXbox
         Start-Sleep -Seconds 2
    }
 }
}

#---------------------------Quit Second Game-------------------------------------##
Function Quit_LaunchedSecondGame_Relay($console){
$Global:ElapsedTime = 30
if($console -eq $Global:Once){
     ConsoleOne_CtrllerXbox
     ConsoleOne_CtrllerDwn
     ConsoleOne_CtrllerDwn
     ConsoleOne_CtrllerDwn
     ConsoleOne_CtrllerDwn
    #Start-Sleep -Seconds 1
     ConsoleOne_CtrllerMenu
     ConsoleOne_CtrllerDwn
     #ConsoleOne_CtrllerDwn             
     #Start-Sleep -Seconds 1
      ConsoleOne_CtrllerDwn
      ConsoleOne_CtrllerDwn    
      ConsoleOne_CtrllerDwn
      ConsoleOne_CtrllerDwn   
      ConsoleOne_CtrllerDwn
      ConsoleOne_CtrllerUp       
      #Start-Sleep -Seconds 1
      ConsoleOne_CtrllerEnter
      Start-Sleep -Seconds 1
      ConsoleOne_CtrllerExit
      ConsoleOne_CtrllerExit
      ConsoleOne_CtrllerExit
      Start-Sleep -Seconds 2
      $isHomeScreen = VerifyHomeScreen 

 }
 }

#-----------------------------------------------------------------------------------------------#


Function Quit_LaunchedGame_Relay1($console){

if($console -eq $Global:Once){
     ConsoleOne_CtrllerXbox
    $ret = Pattern_Verification -CapturedImage "Xbox_oneguidescreen" -IconImage "Xbox_Hme_Logo"
    $Global:ElapsedTime = 10
     if($ret -eq $true){
         ConsoleOne_CtrllerDwn
         ConsoleOne_CtrllerDwn
         #ConsoleOne_CtrllerDwn
         Start-Sleep -Seconds 1
         ConsoleOne_CtrllerMenu
         $ret = Pattern_Verification -CapturedImage "Xbox_gamequite" -IconImage "Quit_GameIcon"

         if($ret -eq $true){
             PressRightThumb -waittime 100 
             ConsoleOne_CtrllerEnter
         }
         Start-Sleep -Seconds 1
         ConsoleOne_CtrllerXbox
         Start-Sleep -Seconds 2 
         $ret1 = Pattern_Verification -CapturedImage "Home_Icon" -IconImage "Home_Icon"                        
            if($ret1 -eq $true){                
                Write-Host "Unable to Exit Game"               
            }
     }
 }
 else{
     ConsoleTwo_CtrllerXbox
     $ret = Pattern_Verification -CapturedImage "Xbox_oneguidescreen" -IconImage "Xbox_Hme_Logo"

     if($ret -eq $true){
         ConsoleTwo_CtrllerDwn
         ConsoleTwo_CtrllerDwn
         #ConsoleTwo_CtrllerDwn
         Start-Sleep -Seconds 1
         ConsoleTwo_CtrllerMenu
         $ret = Pattern_Verification -CapturedImage "Xbox_gamequite" -IconImage "Quit_GameIcon"

         if($ret -eq $true){
             PressRightThumb -waittime 100 
             ConsoleTwo_CtrllerEnter
         }
         Start-Sleep -Seconds 1 
         ConsoleTwo_CtrllerXbox
         Start-Sleep -Seconds 2
     }
 }
 return $ret
}

#-----------------------------------------------------------------------------------------------#


Function NavigateToMyGamesandApps{
Remote_OneGuide -Nooftimes $Global:Once
Set_FixedDelay -DelayTime $Global:Twice
Remote_MoveDown -Nooftimes $Global:Once
Remote_Enter -Nooftimes $Global:Once
Set_FixedDelay -DelayTime $Global:Twice
Remote_Enter -Nooftimes $Global:Once
#Set_FixedDelay -DelayTime $Global:Thrice
$Global:ElapsedTime = 30
$ret = Pattern_Verification -CapturedImage "AppsnGames" -IconImage "apps"

return $ret
}

#-----------------------------------------------------------------------------------------------#


Function NavigateToMyGamesandApps_Relay{
ConsoleOne_CtrllerXbox
Set_FixedDelay -DelayTime $Global:Twice
ConsoleOne_CtrllerDwn
#ConsoleOne_CtrllerDwn
#ConsoleOne_CtrllerDwn
#ConsoleOne_CtrllerDwn
#ConsoleOne_CtrllerDwn
#ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
Set_FixedDelay -DelayTime $Global:Twice
ConsoleOne_CtrllerEnter
#Set_FixedDelay -DelayTime $Global:Thrice
$Global:ElapsedTime = 30
$ret = Pattern_Verification -CapturedImage "AppsnGames1" -IconImage "apps"

return $ret
}

#------------------------- Select Install Option in Search Page -----------------------------------------#
Function Navigate2SearchPage{

    if ($Global:UIversion -eq "old")
    {
   
        $ret = Pattern_Verification -CapturedImage "Search_screen_old" -IconImage "Search_screen_old"
        if($ret -eq $true){
            ConsoleOne_CtrllerY
            Start-Sleep 10
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
        }

    }
    elseif($Global:UIversion -eq "new")
    {
   
        $ret = Pattern_Verification -CapturedImage "Search_screen" -IconImage "Search_screen"
        if($ret -eq $true){
            ConsoleOne_CtrllerY
            Start-Sleep 5
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerMenu
            Start-Sleep 3
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht

            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerX
        }
        
    } 
    return $ret
}
Function Navigate2SearchPage_Console2{
   
   $ret = Pattern_Verification -CapturedImage "Search_screen" -IconImage "Search_screen"
   if($ret -eq $true){
       ConsoleTwo_CtrllerY
       Start-Sleep 10
       ConsoleTwo_CtrllerUp
       ConsoleTwo_CtrllerUp
       ConsoleTwo_CtrllerUp
       ConsoleTwo_CtrllerLft
       ConsoleTwo_CtrllerEnter
       ConsoleTwo_CtrllerDwn
       ConsoleTwo_CtrllerEnter
       ConsoleTwo_CtrllerRht
       ConsoleTwo_CtrllerEnter
   }
   return $ret

 

}

Function Launch_GameUsingSearch($game_name){
if ($Global:UIversion -eq "old")
{
    $ret1 = NavigateToMyGamesandApps_Relay

    if($ret1 -eq $true){
        $ret2 = Navigate2SearchPage

        if($ret2 -eq $true){            
            $ret3 = DynamicKeyBoard -dynamic_name $game_name
            #enter search
            ConsoleOne_CtrllerMenu
            Start-Sleep 2
            ConsoleOne_CtrllerEnter
        }
    }

}
elseif($Global:UIversion -eq "new")
{
    $ret1 = NavigateToMyGamesandApps_Relay

    if($ret1 -eq $true)
    {
        $ret2 = Navigate2SearchPage

        if($ret2 -eq $true)
        {            
            $ret3 = DynamicKeyBoard -dynamic_name $game_name
            ConsoleOne_CtrllerMenu
            Start-Sleep 3
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            #Start-Sleep 2
            #ConsoleOne_CtrllerUp
            #ConsoleOne_CtrllerEnter
            #ConsoleOne_CtrllerEnter
            #Start-Sleep 20
            #ConsoleOne_CtrllerEnter
            return $ret3
        }
    }
    else
    {
        return $false
    }
}
    return $ret3
}

#--------------------------Delete Game Data-------------------------------#

Function DeleteGameData_Usingsearch{
#Go to the  saved data
             #Go to the  saved data
              ConsoleOne_CtrllerXbox
              ConsoleOne_CtrllerDwn
              ConsoleOne_CtrllerDwn
              ConsoleOne_CtrllerMenu
              ConsoleOne_CtrllerDwn
              ConsoleOne_CtrllerDwn
              ConsoleOne_CtrllerDwn
              ConsoleOne_CtrllerEnter
              Start-Sleep -Seconds 4
              ConsoleOne_CtrllerRht
              ConsoleOne_CtrllerDwn
              ConsoleOne_CtrllerDwn 
              ConsoleOne_CtrllerEnter
             $Global:ElapsedTime = 30
             #Verify that the Saved data has been found
             $SavedDataFound = Pattern_Verification -CapturedImage "Data_found" -IconImage "Data_found"           
             if($SavedDataFound -eq $true){     
                ReplaceTag –Document $Doc -FindText '<DukeNukem3D_Step1>' -replacewithtext "Success"            
                Start-Sleep -Seconds 1 
                #Delete the saved data from the console
                ConsoleOne_CtrllerDwn
                ConsoleOne_CtrllerEnter
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerLft
                ConsoleOne_CtrllerLft 
                ConsoleOne_CtrllerEnter
                ConsoleOne_CtrllerExit
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerExit  
                Start-Sleep -Seconds 2
                ConsoleOne_CtrllerExit            
                $case_cnt++
              } 
   
             else{
                $case_cnt = 20
                $tc_status = $false
                Debug_Info 0 "Launch + "$game_title + " Using " + $launchUsing
                $testDescriptionFail = "Unable to find the save data of the " + $game_title  
            }                         
}

Function DataFound{
#Verify that the data has been loaded
             ConsoleOne_CtrllerXbox
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerMenu
             ConsoleOne_CtrllerDwn 
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerEnter
             Start-Sleep -Seconds 10
             ConsoleOne_CtrllerRht
             ConsoleOne_CtrllerDwn
             ConsoleOne_CtrllerDwn 
             ConsoleOne_CtrllerEnter
            #Verify saved game data is available after syncing
            $Global:ElapsedTime = 30
            $SavedDataFound = Pattern_Verification -CapturedImage "Data_found" -IconImage "Data_found"
            if($SavedDataFound -eq $true){    
                ConsoleOne_CtrllerExit
                Start-Sleep -Seconds 1
                ConsoleOne_CtrllerExit
                Start-Sleep -Seconds 1
                ConsoleOne_CtrllerExit
                }
            else
            {
                $case_cnt = 20
                $tc_status = $false                
                $testDescriptionFail = "Unable to find the saved data for" + $game_title 
                Debug_Info 5 "Unable to Exit Game"                
            }
            
          }

#--------------------------------Check Game Data------------------------------#
Function CheckGameData_Usingsearch($game_name){
if ($Global:UIversion -eq "old")
{
    $ret1 = NavigateToMyGamesandApps_Relay

    if($ret1 -eq $true){
        $ret2 = Navigate2SearchPage

        if($ret2 -eq $true){            
            $ret3 = DynamicKeyBoard -dynamic_name $game_name
            #enter search
            ConsoleOne_CtrllerMenu
            Start-Sleep 2
            ConsoleOne_CtrllerMenu
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 10
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn 
            ConsoleOne_CtrllerEnter
            $SavedDataFound = Pattern_Verification -CapturedImage "data_found" -IconImage "data_found"
            
            if($SavedDataFound -eq $true){ 
            Start-Sleep -Seconds 2 
            ConsoleOne_CtrllerExit
            Start-Sleep -Seconds 1
            ConsoleOne_CtrllerExit 
            Start-Sleep -Seconds 1
            ConsoleOne_CtrllerExit     
        }
    }

}
}
elseif($Global:UIversion -eq "new")
{
    $ret1 = Launch_GameUsingSearch($game_name){

    if($ret1 -eq $true)
    {
        $ret2 = Quit_LaunchedGame_Relay

        if($ret2 -eq $true)
        { 
         ConsoleOne_CtrllerXbox 
         ConsoleOne_CtrllerDwn 
         ConsoleOne_CtrllerDwn
         ConsoleOne_CtrllerMenu
         ConsoleOne_CtrllerDwn
         ConsoleOne_CtrllerDwn
         ConsoleOne_CtrllerDwn
         ConsoleOne_CtrllerEnter
         Start-Sleep -Seconds 10
         ConsoleOne_CtrllerRht
         ConsoleOne_CtrllerDwn
         ConsoleOne_CtrllerDwn 
         ConsoleOne_CtrllerEnter
         $SavedDataFound = Pattern_Verification -CapturedImage "data_found" -IconImage "data_found"
         
         if($SavedDataFound -eq $true){ 
         Start-Sleep -Seconds 2 
         ConsoleOne_CtrllerExit
         Start-Sleep -Seconds 1
         ConsoleOne_CtrllerExit 
         Start-Sleep -Seconds 1
         ConsoleOne_CtrllerExit            
            
            return $ret2
        }
    }
    }
    else
    {
        return $false
    }
}
   
}
}


#------------------------- Navigate To Store -----------------------------------------#

Function NavigateToStore{
    $isHomeScreen = VerifyHomeScreen 

    ConsoleOne_CtrllerXbox
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    #ConsoleOne_CtrllerRht    
    ConsoleOne_CtrllerEnter
    Start-Sleep -seconds 7
    
   
    
    return $isHomeScreen

}

#------------------------- Launch Keyboard -----------------------------------------#

Function Launch_Keyboard{
    $Global:ElapsedTime = 5
    $isKeyboard=Pattern_Verification -CapturedImage "keyBoard" -IconImage "keyBoard"

    if($isKeyboard -eq $false){
        ConsoleOne_CtrllerEnter
        ConsoleOne_CtrllerX
        ConsoleOne_CtrllerX
    }

    return $isKeyboard

}

#------------------------- Uninstall Game -----------------------------------------#

Function UninstallGame(){
   
   $isHomeScreen = VerifyHomeScreen 

   ConsoleOne_CtrllerXbox
   ConsoleOne_CtrllerDwn
   ConsoleOne_CtrllerDwn
   ConsoleOne_CtrllerMenu
   ConsoleOne_CtrllerDwn
   ConsoleOne_CtrllerDwn
   ConsoleOne_CtrllerEnter
   Start-Sleep 2
   ConsoleOne_CtrllerRht
   ConsoleOne_CtrllerUp
   ConsoleOne_CtrllerEnter
   ConsoleOne_CtrllerLft
   ConsoleOne_CtrllerEnter
   
   return $isHomeScreen
   
}

#------------------------- Navigate To User Profile -----------------------------------------#

Function NavigateToUserProfile{
   $isHomeScreen = VerifyHomeScreen 

    ConsoleOne_CtrllerXbox 
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht


    return $isHomeScreen
  }



#------------------------- Navigate via MyGames & Apps to launch Youtube -----------------------------------#



Function Launch_YouTube{

    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerDwn
    Set_FixedDelay -DelayTime 1
    ConsoleOne_CtrllerRht
    Set_FixedDelay -DelayTime 1
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    Set_FixedDelay -DelayTime 1
    ConsoleOne_CtrllerEnter
    Set_FixedDelay -DelayTime 1
}

#--------------------------------- Switching between Profiles -------------------------------------#


Function SwitchProfile()
{
    ConsoleOne_CtrllerXbox
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 1
    ConsoleOne_CtrllerXbox
    ConsoleOne_CtrllerEnter
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
     Start-Sleep -Seconds 5
}

#---------------------------- Send Game Invite to Friend  -------------------------------------#


Function Navigate2GameInvite_OneGuide{
 $Global:ElapsedTime = 30
 $tc_status = $false
  $loop_status = $true
  $case_cnt = 0
  
   while($loop_status)
   {

     switch($case_cnt)
     {
        0 {
                ConsoleOne_CtrllerXbox

                ConsoleOne_CtrllerLft
                ConsoleOne_CtrllerEnter
                $case_cnt++
            
           
          }
         1{
            $ret = Pattern_Verification -CapturedImage "friends_list" -IconImage "friends_list"

            if($ret -eq $true)
            {
                ConsoleOne_CtrllerEnter
                $case_cnt++
            }
            else
            {
                 $case_cnt = 20
                 $tc_status = $false
                 Debug_Info 1 "Navigate2GameInvite_OneGuide"
            }
          }
         2{
                $ret = Pattern_Verification -CapturedImage "join_game" -IconImage "join_game"

                if($ret -eq $true)
                {
                    ConsoleOne_CtrllerDwn
                    ConsoleOne_CtrllerDwn
                    ConsoleOne_CtrllerEnter
                    $case_cnt++
                }
                else
                 {
                     $case_cnt = 20
                    $tc_status = $false
                    Debug_Info 2 "Navigate2GameInvite_OneGuide"
                 }
          }
         3{
            $ret = Pattern_Verification -CapturedImage "Invitetogame_verify" -IconImage "Invitetogame_verify"
            if($ret -eq $true)
            {
                ConsoleOne_CtrllerDwn
                ConsoleOne_CtrllerEnter
                $case_cnt++
            }
            else
            { 
                     $case_cnt = 20
                    $tc_status = $false
                    Debug_Info 3 "Navigate2GameInvite_OneGuide"
            }
            

         }
        4{
          $ret = Pattern_Verification -CapturedImage "SendGameInvite_oneguide" -IconImage "SendInviteGame"
            if($ret -eq $true)
            {
               $tc_status = $true
            }
            else
            {
                    $tc_status = $false
                    Debug_Info 4 "Navigate2GameInvite_OneGuide"

            }
            
            $case_cnt = 20

         }
       20{
            $TestId = "TS01_TC11"
            #$ret = Pattern_Verification -CapturedImage "SendGameInvite_oneguide" -IconImage "SendInviteGame"
            if($tc_status -eq $true)
            {
               Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
               $Global:ExecutionStatus = $true
            }
            else
            {
              Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
               $Global:ExecutionStatus = $false
            }

            Start-Sleep -Seconds 2
            ConsoleOne_CtrllerXbox
            Start-Sleep -Seconds 5
            $loop_status = $false
       }
       default
       {
                $loop_status = $false
       }

     }
   }
return $tc_status
}

#-----------------------------------------------------------------------------------------------#

#------------------------ Analog Control Functions -------------------------------------#

Function CalculatePOTDigital($Vout)
 {
    $RTotal = 10.5
    $VSource=5
    $R2= ($RTotal/$VSource)*$Vout
    $R1 = ($RTotal - $R2)
    [byte]$Digitalvalue = (255/$RTotal)*$R1
    return $Digitalvalue
 }

 Function PressButtonDP
{
    param ( [byte] $channel, [double] $Value, [bool]$Ishold, $wait )

    [byte]$defaultDigitalvalue = 0
    if($channel -le 3)
    {
        $defaultDigitalvalue = CalculatePOTDigital -Vout 0.930
    }
    else
    {
        $defaultDigitalvalue = CalculatePOTDigital -Vout 1.65
    }
    
    [byte]$SetDigitalvalue = CalculatePOTDigital -Vout $Value

    $bytData = [Byte[]](254,170,$channel,$SetDigitalvalue) 
 
    if($Ishold)
    {
    WriteDatainHex -SerialPort $SerialLabel2 -bytData $bytData
    ReadPortData -SerialPort $SerialLabel2
    }
    else
    {
    WriteDatainHex -SerialPort $SerialLabel2 -bytData $bytData
    ReadPortData -SerialPort $SerialLabel2

    Start-Sleep -Milliseconds $wait

    $bytData = [Byte[]](254,170,$channel,$defaultDigitalvalue) 

    WriteDatainHex -SerialPort $SerialLabel2 -bytData $bytData
    ReadPortData -SerialPort $SerialLabel2

    }
    
}

Function ReleaseButtonDP
{
    param ( [byte] $channel)

     [byte]$defaultDigitalvalue = 0
    if($channel -le 3)
    {
        $defaultDigitalvalue = CalculatePOTDigital -Vout 0.930
    }
    else
    {
        $defaultDigitalvalue = CalculatePOTDigital -Vout 1.65
    } 

    $bytData = [Byte[]](254,170,$channel,$defaultDigitalvalue) 

    WriteDatainHex -SerialPort $SerialLabel2 -bytData $bytData
    ReadPortData -SerialPort $SerialLabel2

}


Function RefreshButtonDP
{
    param ( [byte] $channel)

     [byte]$defaultDigitalvalue = 0
    if($channel -le 3)
    {
        $defaultDigitalvalue = CalculatePOTDigital -Vout 0.930
    }
    else
    {
        $defaultDigitalvalue = CalculatePOTDigital -Vout 1.65
    }

    $bytData = [Byte[]](254,172,$channel,$defaultDigitalvalue) 

    WriteDatainHex -SerialPort $SerialLabel2 -bytData $bytData
    ReadPortData -SerialPort $SerialLabel2

}
    
Function SetDefaultValueDP
{
RefreshButtonDP -channel 00
RefreshButtonDP -channel 01
RefreshButtonDP -channel 02
RefreshButtonDP -channel 03
RefreshButtonDP -channel 04
RefreshButtonDP -channel 05
}

Function ResetDP
{
    $bytData = [Byte[]](254,171,255) 

    WriteDatainHex -SerialPort $SerialLabel2 -bytData $bytData
    ReadPortData -SerialPort $SerialLabel2
}


#-----------------------------------------------------------------------------------------------#

<#This is to log bug in Insider Hub #>
Function Create_Bug_In_Insider_Hub($testDescription,$game_title_hub){

    $Global:ElapsedTime = 120
    $Selection_cnt = 0
            
    #Report a bug by holding the Xbutton down for a long press
    ConsoleOne_CtrllerPwr
    Start-Sleep -Seconds 2

    #"Select Report a problem"
    ConsoleOne_CtrllerRht 
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 30

    #"Select Add a new problem"
    ConsoleOne_CtrllerDwn
    $Global:ElapsedTime = 60
    $AddNewFound = Pattern_Verification -CapturedImage "AddProblem_InsiderHub" -IconImage "AddProblem_InsiderHub" 
    if($AddNewFound -eq $true)
    {
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 30
    $CategoryFound = Pattern_Verification -CapturedImage "Category_InsiderHub" -IconImage "Category_InsiderHub" 
    if($CategoryFound -eq $true)
    {
    #Select Games
    ConsoleOne_CtrllerRht 
    ConsoleOne_CtrllerRht 
    ConsoleOne_CtrllerEnter          
    Start-Sleep -Seconds 30 
    $GameFound = Pattern_Verification -CapturedImage "SelectGame_InsiderHub" -IconImage "SelectGame_InsiderHub" 
    if($GameFound -eq $true)
    {
    #Select first game
    <#ConsoleOne_CtrllerEnter#>
    Start-Sleep -Seconds 30

    $ProblemPage = Pattern_Verification -CapturedImage "Problem_InsiderHub" -IconImage "Problem_InsiderHub" 
    if($ProblemPage -eq $true)
    {
    #Call function to type
    #TypeTextToSummarizeInsiderHub -game_title_hub $game_title_hub

    #Move to the alias box
    ConsoleOne_CtrllerDwn
    #ConsoleOne_CtrllerEnter
    #TypeMicrosoftoAlias


    #Go to description sking check box
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter

    #Navigate to the Microphone button on the Keypad        
   <# ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 2
    $VoiceInput.Speak($testDescription)#>

    #Not submitting the bug in system
    ConsoleOne_CtrllerExit
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    }  
    } 
    } 
    }
}


Function TypeTextToSummarizeInsiderHub($game_title_hub){

ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerEnter #switch mode in keypad
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter #type '['
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerEnter # to get back alphabets
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnterDeepPress #Caps Lock Mode On
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerEnter #type 'T'
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerEnter # type ' E
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter # type 'S'
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerEnter # type 'T'
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerEnter # type 'X'
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerEnter # type '-'
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerEnter # get back alphabets
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnterDeepPress #Caps Lock Mode On
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerEnter # type 'H'
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter # type 'C'
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerEnter # type 'L'
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter # type ']'
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerEnter # type '['
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerUp
ConsoleOne_CtrllerEnter 
ConsoleOne_CtrllerEnter # get back alphabets
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerEnter # type '1'
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerEnter # type '9'
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerEnter # type '1'
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerEnter # type '0'
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerLft
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter # type ']'

# Navigate to mic 
<#ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerLft#>


#Gametitle
<# ConsoleOne_CtrllerEnter
$VoiceInput.Speak($game_title_hub)
Start-Sleep -Seconds 10 
#Input the Title of the Bug using voice to text
ConsoleOne_CtrllerEnter
$VoiceInput.Speak("Bug Filed by automated System") #>

#Exit the keyboard
ConsoleOne_CtrllerExit 

}

Function TypeMicrosoftoAlias(){
    #Activate Voice input
    ConsoleOne_CtrllerEnter
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 2

    $VoiceInput.Speak("select all") 
    Start-Sleep -Seconds 2 
    $VoiceInput.Speak("delete that") 
    Start-Sleep -Seconds 2 

    #Type email id in the box    
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerEnter #type case lower selected
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerEnter #type 'k'
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerEnter #type 'h'
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerEnter #type a
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerEnter #type g
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerEnter #type 'e'
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter #type 'l'
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerEnter #change keypad
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerEnter #type '@'
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerEnter
    ConsoleOne_CtrllerEnter #change keypad
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter # type 'm'
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerEnter # type 'i'
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerEnter # type 'c'
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerEnter # type 'r'
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerEnter # type 'o'
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter # type 's'
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerEnter # type 'o'
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter # type 'f'
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerEnter # type 't'
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter # type '.'
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerEnter # type 'c'
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerUp
    ConsoleOne_CtrllerEnter # type 'o'
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerEnter # type 'm'
    #Exit the keyboard
    ConsoleOne_CtrllerExit

}


Function VerifyHomeScreen(){
     $Global:ElapsedTime = 10 
     $isHomeScreen = Pattern_Verification -CapturedImage "Home_Icon" -IconImage "Home_Icon"
     if($isHomeScreen -eq $false)
     {
        ConsoleOne_CtrllerXbox
        ConsoleOne_CtrllerEnter               
        $isHomeScreen = Pattern_Verification -CapturedImage "Home_Icon" -IconImage "Home_Icon"
     }     
     return $isHomeScreen
}

Function WhoAreYouScreenHandle(){
     $Global:ElapsedTime = 7
     $isWhoAreYouScreen = Pattern_Verification -CapturedImage "WhoAreYou" -IconImage "WhoAreYou"
     if($isWhoAreYouScreen -eq $true)
     {
        ConsoleOne_CtrllerEnter        
        Start-Sleep -Seconds 5
        $isWhoAreYouScreen = Pattern_Verification -CapturedImage "WhoAreYou" -IconImage "WhoAreYou"
     }     
     return $isWhoAreYouScreen
}

<#Function FinalizeGameStatus($game_title, $tc_status) {
            
    $temptop = "<" + $game_title +  "_StatusTop>"
    $bugcountforgame = "<" + $game_title + "_Bug>"
    $rowToChange = $Global:tcCount + 4
   
    $Global:tcCount = $Global:tcCount + 1     
 
    if($tc_status -eq "Pass"){                           
            
        $Global:ExecutionStatus = $true       
        ChangeCellColor -Document $Doc -RowNo $rowToChange -Outcome "Pass" -temptop $temptop        
        ReplaceTag –Document $Doc -FindText $temptop -replacewithtext "Pass"
        ReplaceTag –Document $Doc -FindText $bugcountforgame -replacewithtext "0"
    }
 
    elseif($tc_status -eq "Fail"){                           
            
        $Global:ExecutionStatus = $true       
        ChangeCellColor -Document $Doc -RowNo $rowToChange -Outcome "Fail" -temptop $temptop        
        ReplaceTag –Document $Doc -FindText $temptop -replacewithtext "Fail"
        ReplaceTag –Document $Doc -FindText $bugcountforgame -replacewithtext "1"
        $Global:totalbug = $Global:totalbug + 1
    }
    elseif($tc_status -eq "Warning"){                           
            
        $Global:ExecutionStatus = $true       
        ChangeCellColor -Document $Doc -RowNo $rowToChange -Outcome "Warning" -temptop $temptop        
        ReplaceTag –Document $Doc -FindText $temptop -replacewithtext "Warning"
        ReplaceTag –Document $Doc -FindText $bugcountforgame -replacewithtext "1"
    }
              
} #>

Function FinalizeGameStatus($game_title, $game_title_hub, $tc_status, $GameUpdateFound, $testDescriptionFail, $testDescriptionPass ) {
            
    $temp = "<" + $game_title +  "_Status>"
    $temptop = "<" + $game_title +  "_StatusTop>"
    $bugcountforgame = "<" + $game_title + "_Bug>"
    $rowToChange = $Global:tcCount + 4
   
    $Global:tcCount = $Global:tcCount + 1     
 
    if($tc_status -eq $true){                           
            
        $Global:ExecutionStatus = $true       
        ChangeCellColor -Document $Doc -RowNo $rowToChange -Outcome "Pass" -temptop $temptop        
        ReplaceTag –Document $Doc -FindText $temp -replacewithtext "Pass"
        ReplaceTag –Document $Doc -FindText $temptop -replacewithtext "Pass"
        ReplaceTag –Document $Doc -FindText $bugcountforgame -replacewithtext "0"
        #ChangeCellColor -Document $Doc -RowNo $rowToChange -Outcome "Pass"
    }
 
    else
    {               
        $Global:ExecutionStatus = $false
        $Global:ElapsedTime = 10 
        #if game update was found no bug needs to be logged
        if($GameUpdateFound -eq $false){
            #Crash check
            $crash = Pattern_Verification -CapturedImage "Home_Icon" -IconImage "Home_Icon"
 
            if($crash -eq $true){
                $testDescriptionFail = "Game navigated to Home screen automatically.  " + $testDescriptionFail
            }
               
            else
            {                 
                ConsoleOne_CtrllerXbox
                $ret_softlock = Pattern_Verification -CapturedImage "Xbox_Hme_Logo" -IconImage "Xbox_Hme_Logo"
                if($ret_softlock -eq $true)    {
                    $testDescriptionFail = "Unexpected behavior of game but Controller working. " + $testDescriptionFail
                    ConsoleOne_CtrllerExit
                }
                else
                {
                    $testDescriptionFail = "Unexpected behavior of game and Controller not responding. " + $testDescriptionFail
                }
            }
            #commented as of now
            #Create_Bug_In_Insider_Hub -testDescription $testDescriptionFail -game_title_hub $game_title_hub
            #Start-Sleep -Seconds 120
            #ConsoleOne_CtrllerEnter
            #Quit Insider Hub
            Quit_LaunchedGame_Relay -console $Global:Once
            $Global:totalbug = $Global:totalbug + 1
            ChangeCellColor -Document $Doc -RowNo $rowToChange -Outcome "Fail" -temptop $temptop  
            ReplaceTag –Document $Doc -FindText $temptop -replacewithtext "Fail"
            ReplaceTag –Document $Doc -FindText $bugcountforgame -replacewithtext "1"
            #ChangeCellColor -Document $Doc -RowNo $rowToChange -Outcome "Fail"  
        }
        else
        {
            ChangeCellColor -Document $Doc -RowNo $rowToChange -Outcome "Not Run" -temptop $temptop  
            ReplaceTag –Document $Doc -FindText $temptop -replacewithtext "Not Run"
            ReplaceTag –Document $Doc -FindText $bugcountforgame -replacewithtext "0"
            #ChangeCellColor -Document $Doc -RowNo $rowToChange -Outcome "NotRun"              
        }
 
        ReplaceTag –Document $Doc -FindText $temp -replacewithtext $testDescriptionFail
              
    }          
} #>
Function FinalizeReport() {
        
        $return = FetchSysInfo       

        ReplaceTag –Document $Doc -FindText '<TP_DateTime>' -replacewithtext $tpDateTime
        ReplaceTag –Document $Doc -FindText '<TestCaseCount>' -replacewithtext $Global:tcCount
        ReplaceTag –Document $Doc -FindText '<ConsoleID>' -replacewithtext $return.consoleId
        ReplaceTag –Document $Doc -FindText '<SerialNo>' -replacewithtext $return.serialNo
        ReplaceTag –Document $Doc -FindText '<Build_Number>' -replacewithtext $return.buildNo
        ReplaceTag –Document $Doc -FindText "<NumberOfBugs>" -replacewithtext $Global:totalbug                       
}

Function DynamicKeyBoard_old($dynamic_name){
    $loopCount=0
    while($loopCount -lt $dynamic_name.length){
       $KB_character=$dynamic_name[$loopCount] 
        
        switch($KB_character){
        'A'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        'B'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
           }
        'C'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        'D'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        'E'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        'F'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }

        'G'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
           }
        'H'{ 
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
           }
        'I'{ 
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
           }
        'J'{ 
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
           }
        'K'{ 
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
           }
        'L'{ 
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
           }
        'M'{ 
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
           }
        'N'{ 
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerUp
           }
        'O'{ 
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
           }
        'P'{ 
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
           }
        'Q'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        'R'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        'S'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        'T'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
           }
        'U'{ 
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
           }
        'V'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        'W'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        'X'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        'Y'{ 
            ConsoleOne_CtrllerEnter
           }
        'Z'{ 
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
           }
        ' '{ 
            ConsoleOne_CtrllerY
           }
        0 { 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
           }
           1 { 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           2 { 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           3 { 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           4 { 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           5 { 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           6 { 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerDwn
           }
           7 { 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
           }
           8 { 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
           }
           9 { 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
           }
           '!'{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           '@'{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           '#'{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           '$'{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           '%'{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           '&'{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           '*'{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           '('{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           ')'{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           '-'{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }
           '_'{ 
            ConsoleOne_CtrllerUp
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerEnter
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerRht
            ConsoleOne_CtrllerDwn
           }

    }
    $loopCount++
}

return $true
}
Function DynamicKeyBoard($dynamic_name){
$loopCount=0
$prvscol=5
$prvsrow=1

while($loopCount -lt $dynamic_name.length){
    $KB_character=$dynamic_name[$loopCount] 
        
    $alpha=@(@("","","","","<",">","[","]","{","}"),@("=","+","\",";",":",'"',"*","/","",""),@("!","@","#","$","%","&","(",")","-","_"),@("1","2","3","4","5","6","7","8","9","0"),@("Q","W","E","R","T","Y","U","I","O","P"),@("A","S","D","F","G","H","J","K","L","'"),@("Z","X","C","V","B","N","M",",",".","?"))
    if($KB_character -eq " "){
        ConsoleOne_CtrllerY
        $loopCount++
        continue
    }
    elseif(($KB_character -in $alpha[0]) -or ($KB_character -in $alpha[1]) -or ($KB_character -in $alpha[2])){
            
            if($KB_character -in $alpha[0]){
            $i=0
            $j=2
            }
            elseif($KB_character -in $alpha[1]){
            $i=1
            $j=1
            }elseif($KB_character -in $alpha[2]){
            $i=2
            $j=0
            }
            #For Arduino setup
            #ConsoleOne_CtrllerLT

            #For Relay
            PressLeftThumb -waittime 500

    }
    elseif($KB_character -in $alpha[3]){
            $i=3
            $j=0
    }
    elseif($KB_character -in $alpha[4]){
            $i=4
            $j=1
    }
    elseif($KB_character -in $alpha[5]){
            $i=5
            $j=2
    }
    elseif($KB_character -in $alpha[6]){
            $i=6
            $j=3
    }

    foreach($info in $alpha[$i])
    {
        
        if($info -eq $KB_character){

            $nextcol=$alpha[$i].IndexOf($info) 
            $nextrow=$j
            
            $NetCol=$nextcol - $prvscol
            $Netrow=$nextrow - $prvsrow

            if($NetCol -eq 0 -or $Netrow -eq 0){
            }
            if($NetCol -lt 0){
                while($NetCol -ne 0){
                ConsoleOne_CtrllerLft
                $NetCol++
                }
            }
            if($NetCol -gt 0){
                while($NetCol -ne 0){
                ConsoleOne_CtrllerRht
                $NetCol--
                }
            }
            if($Netrow -lt 0){
                while($Netrow -ne 0){
                ConsoleOne_CtrllerUp
                $Netrow++
                }
            }
            if($Netrow -gt 0){
                while($Netrow -ne 0){
                ConsoleOne_CtrllerDwn
                $Netrow--
                }
            }
            ConsoleOne_CtrllerEnter

            if($i -le 2){
                #For Arduino setup
                #ConsoleOne_CtrllerLT
                #ConsoleOne_CtrllerLT

                #For Relay
                PressLeftThumb -waittime 500
                PressLeftThumb -waittime 500
            }

            $prvscol=$nextcol
            $prvsrow=$nextrow

            break
        }
        
    }
    $loopCount++
}
return $true
}

Function SignOut_UserProfile{
    $is_UserSignedIn = $true
    While($is_UserSignedIn){
        ConsoleOne_CtrllerXbox
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        $Global:ElapsedTime = 10
        
        $is_SwitchProfile = Pattern_Verification -CapturedImage "AddOrSwitch" -IconImage "AddOrSwitch"
        if($is_SwitchProfile -eq $true)
        {
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 1
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 1
            $is_UserSignedIn = $true
        }
        else{
            ConsoleOne_CtrllerExit
            $is_UserSignedIn = $false
        }
    }
    return $is_UserSignedIn
}

Function SignOut_UserProfile_Console2{
    $is_UserSignedIn = $true
    While($is_UserSignedIn){
        ConsoleTwo_CtrllerXbox
        ConsoleTwo_CtrllerRht
        ConsoleTwo_CtrllerRht
        ConsoleTwo_CtrllerRht
        ConsoleTwo_CtrllerRht
        ConsoleTwo_CtrllerRht
        $Global:ElapsedTime = 10
        
        $is_SwitchProfile = Pattern_Verification -CapturedImage "AddOrSwitch" -IconImage "AddOrSwitch"
        if($is_SwitchProfile -eq $true)
        {
            ConsoleTwo_CtrllerDwn
            ConsoleTwo_CtrllerDwn
            ConsoleTwo_CtrllerEnter
            Start-Sleep -Seconds 1
            ConsoleTwo_CtrllerEnter
            Start-Sleep -Seconds 1
            $is_UserSignedIn = $true
        }
        else{
            ConsoleTwo_CtrllerExit
            $is_UserSignedIn = $false
        }
    }
    return $is_UserSignedIn
}

Function SignInProfile($ProfileToSignIn){
      
      ConsoleOne_CtrllerXbox
      ConsoleOne_CtrllerEnter
      Start-Sleep -Seconds 3

      $cnt=1
      $RegionLabel="Account"+$cnt
      Captured_ImgPath -img_name $CapturedImage
      Image_Capture -ImagePath $Global:CapturedImgPath
      $ValidAccount = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $RegionLabel
      $ValidAccount=$ValidAccount.Tolower() 
      while($ValidAccount -ne $ProfileToSignIn -and $cnt -le 6){
        ConsoleOne_CtrllerDwn
        $cnt++
        $RegionLabel="Account"+$cnt
        Captured_ImgPath -img_name $CapturedImage
        Image_Capture -ImagePath $Global:CapturedImgPath
        $ValidAccount = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $RegionLabel
        $ValidAccount=$ValidAccount.Tolower() 
      }

        if($ValidAccount -eq $ProfileToSignIn){
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 10
            return $true
        }
        else{
            ConsoleOne_CtrllerXbox
            return $false
        }
}

Function SignInProfile_Console2($ProfileToSignIn){
      
      ConsoleTwo_CtrllerXbox
      ConsoleTwo_CtrllerEnter
      Start-Sleep -Seconds 3

      $cnt=1
      $RegionLabel="Account"+$cnt
      Captured_ImgPath -img_name $CapturedImage
      Image_Capture -ImagePath $Global:CapturedImgPath
      $ValidAccount = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $RegionLabel
      $ValidAccount=$ValidAccount.Tolower() 
      while($ValidAccount -ne $ProfileToSignIn -and $cnt -le 6){
        ConsoleTwo_CtrllerDwn
        $cnt++
        $RegionLabel="Account"+$cnt
        Captured_ImgPath -img_name $CapturedImage
        Image_Capture -ImagePath $Global:CapturedImgPath
        $ValidAccount = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $RegionLabel
        $ValidAccount=$ValidAccount.Tolower() 
      }

        if($ValidAccount -eq $ProfileToSignIn){
            ConsoleTwo_CtrllerEnter
            Start-Sleep -Seconds 10
            return $true
        }
        else{
            ConsoleTwo_CtrllerXbox
            return $false
        }
}

Function SignInProfile2($ProfileToSignIn){
      
      ConsoleOne_CtrllerXbox
      ConsoleOne_CtrllerEnter
      Start-Sleep -Seconds 3

      $cnt=1
      $RegionLabel="Account"+$cnt
      Captured_ImgPath -img_name $CapturedImage
      Image_Capture -ImagePath $Global:CapturedImgPath
      $ValidAccount = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $RegionLabel
      $ValidAccount=$ValidAccount.Tolower() 
      while($ValidAccount -notlike $ProfileToSignIn -and $cnt -le 6){
        ConsoleOne_CtrllerDwn
        $cnt++
        $RegionLabel="Account"+$cnt
        Captured_ImgPath -img_name $CapturedImage
        Image_Capture -ImagePath $Global:CapturedImgPath
        $ValidAccount = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $RegionLabel
        $ValidAccount=$ValidAccount.Tolower() 
      }

        if($ValidAccount -like $ProfileToSignIn){
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 10
            return $true
        }
        else{
            ConsoleOne_CtrllerXbox
            return $false
        }
}

Function SignOutAccount{
    Start-Sleep -Seconds 2
    ConsoleOne_CtrllerXbox
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 5

    return $true

}

Function SignInto_Account{
    
        #Sign in to Account D
        Start-Sleep -Seconds 1
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerEnter
        Start-Sleep -Seconds 1

        
}

Function SignInto_AccountB{
        #Sign in to Account B
        Start-Sleep -Seconds 3
        ConsoleOne_CtrllerXbox
        ConsoleOne_CtrllerEnter
        Start-Sleep -Seconds 1

        #Select Account B

        $ExtractRegionLabel1 = "AccountA"
        Image_Capture -ImagePath $Global:CapturedImgPath
        $GameToSelectLocation = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $ExtractRegionLabel1
             
        if($GameToSelectLocation -match $AccountB){
            ConsoleOne_CtrllerEnter
            $case_cnt++

        }

        else{
                ConsoleOne_CtrllerDwn
                    
            $ExtractRegionLabel1 = "AccountB"
            Image_Capture -ImagePath $Global:CapturedImgPath
            $GameToSelectLocation = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $ExtractRegionLabel1
            if($GameToSelectLocation -match $AccountB){
                ConsoleOne_CtrllerEnter
                $case_cnt++
            }
            else{
                Write-Host 'Account not found' -BackgroundColor DarkRed
                Write-Host 'Please enter accounts' -BackgroundColor DarkRed
                }

        }

       return $true
}


Function NavigateTosettings{

ConsoleOne_CtrllerXbox
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
Start-Sleep 5

}


Function UninstallGame(){
    
    ConsoleOne_CtrllerMenu
    Start-Sleep -Seconds 10
    ConsoleOne_CtrllerMenu
    Start-Sleep -Seconds 3
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 15
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerUp            
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 6
    ConsoleOne_CtrllerDwn
                
    ConsoleOne_CtrllerEnter
    ConsoleOne_CtrllerRht
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    Start-Sleep -Seconds 1
    ConsoleOne_CtrllerExit
    Start-Sleep -Seconds 1
    ConsoleOne_CtrllerExit
        Start-Sleep -Seconds 1
    ConsoleOne_CtrllerExit
        Start-Sleep -Seconds 1
    ConsoleOne_CtrllerExit
}

#----------------------------------  Contrast ratio Calculation   ----------------------------------#


Function Calculate_Luminance($R,$G,$B)
{
$Rg = 0
$Gg = 0
$Bg = 0
if($R -le 10)
{
$Rg = $R/3294
}
else
{ 
$Rg = [Math]::Pow(($R/269 + 0.0513), 2.4)
}
if($G -le 10)
{
$Gg = $G/3294
} 
else
{ 
$Gg = [Math]::Pow(($G/269 + 0.0513), 2.4)
}
if($B -le 10)
{ 
$Bg = $B/3294
}
else
{
$Bg = [Math]::Pow(($B/269 + 0.0513), 2.4)
}

$L = 0.2126 * $Rg + 0.7152 * $Gg + 0.0722 * $Bg
return $L
}

#-----------------------------------------------------------------------------------------------#


Function Calc_ContrastRatio($ImagPath,$RegionText,$RegionBackground)
{

try
{

$ImagePath = [System.IO.Path]::Combine( $CapturedImageFolder ,$ImagPath +".bmp" )


$ret = GetColor -ImagPath $ImagePath -Regionno $RegionText
$L1 = Calculate_Luminance -R  $Global:R -G  $Global:G -B  $Global:B


$ret = GetColor -ImagPath $ImagePath -Regionno $RegionBackground
$L2 = Calculate_Luminance -R  $Global:R -G  $Global:G -B  $Global:B

#$L2 = 0.2126 * $Rg2 + 0.7152 * $Gg2 + 0.0722 * $Bg2

if($L1 -le $L2)
{
$Contrast_Ratio = ($L2 + 0.05) / ($L1 + 0.05)
}
else
{
$Contrast_Ratio = ($L1 + 0.05) / ($L2 + 0.05)
}

Write-Host "Contrast Ratio:" $Contrast_Ratio
return $Contrast_Ratio
}
catch
{
    Write-Host $_.Exception.Message -ForegroundColor Red
}

}

Function GetContrastStatus($cont_val){
    if($cont_val -gt 4.4){
    return "Pass"
    }

    elseif ($cont_val -gt 4 -and $cont_val -lt 4.41){
    return "Warning"
    }

    else{
    return "Fail"
    }
}

#-----------------------------------------------------------------------------------------------#
Function Quit_LaunchedApp_Relay($console){

if($console -eq $Global:Once){
     ConsoleOne_CtrllerXbox
    $ret = Pattern_Verification -CapturedImage "Xbox_oneguidescreen" -IconImage "Xbox_Hme_Logo"
    $Global:ElapsedTime = 10
     if($ret -eq $true){
         ConsoleOne_CtrllerDwn
         ConsoleOne_CtrllerDwn
       #  ConsoleOne_CtrllerDwn
         Start-Sleep -Seconds 1
         ConsoleOne_CtrllerMenu
         $ret = Pattern_Verification -CapturedImage "Xbox_gamequite" -IconImage "Quit_GameIcon"

         if($ret -eq $true){
             PressRightThumb -waittime 100 
             ConsoleOne_CtrllerEnter
         }
         Start-Sleep -Seconds 1
         ConsoleOne_CtrllerXbox
         Start-Sleep -Seconds 2 
         $ret1 = Pattern_Verification -CapturedImage "Home_Icon" -IconImage "Home_Icon"                        
            if($ret1 -eq $true){                
                Write-Host "Unable to Exit Game"               
            }
     }
 }
 else{
     ConsoleTwo_CtrllerXbox
     $ret = Pattern_Verification -CapturedImage "Xbox_oneguidescreen" -IconImage "Xbox_Hme_Logo"

     if($ret -eq $true){
         ConsoleTwo_CtrllerDwn
         ConsoleTwo_CtrllerDwn
         #ConsoleTwo_CtrllerDwn
         Start-Sleep -Seconds 1
         ConsoleTwo_CtrllerMenu
         $ret = Pattern_Verification -CapturedImage "Xbox_gamequite" -IconImage "Quit_GameIcon"

         if($ret -eq $true){
             PressRightThumb -waittime 100 
             ConsoleTwo_CtrllerEnter
         }
         Start-Sleep -Seconds 1 
         ConsoleTwo_CtrllerXbox
         Start-Sleep -Seconds 2
     }
 }
 return $ret
}