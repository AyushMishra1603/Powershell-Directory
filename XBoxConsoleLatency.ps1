$AssemblyDir             = "Executables"
$Script_Objects          = "eDAT\Objects.ps1"

$ImagePatternScript      = "eDAT\eDAT_Image_Pattern_Script.ps1"
$ImageCompareScript      = "eDAT\eDAT_Image_Pixel_Script.ps1"
$ImageCaptureScript      = "eDAT\eDAT_Image_Camera_Script.ps1"
$OCRScript               = "eDAT\eDAT_OCR_DefaultOCR1_Script.ps1"
$ReportScript            = "eDAT\eDAT_Reporting_WordReport_Script.ps1"
$SerialScript            = "eDAT\eDAT_Serial_Script.ps1"
#$VideoCaptureScript     = "eDAT\eDAT_Video_DefaultVideo_Script.ps1"
$VideoCompareScript      = "eDAT\eDAT_Video_DefaultVideoCompare_Script.ps1"
$SwKBMScript             = "eDAT\eDAT_KBM_Software_Script.ps1"

#---------------------------------------------------

$CapturedImageFolder      = "Images\Captured\XBoxConsole\"
$RefImageFolder           = "Images\Reference\XBoxConsole\"
$IconImageFolder          = "Images\Icon\XBoxConsole\"
$VideoFolderPath          = "Video\"
$ImagesPath               = "Images\"
$Global:WindowsRecordPath = "C:\Record"


<#
$Global:CapturedImgPath  = $null
$Global:IconImgPath      = $null
$Global:ExtractedText    = $null
$ImageDevice             = "Camera3"
$OCRLabel                = "DefaultOCR1"
$SerialLabel             = "PortLabel2" 
$ReportLabel             = "Label1"
$VideoDevice             = "Camera5" 
$VideoCmprDevice         = "Camera1"
$Global:RegLabel         = "label1"
$Global:execution_flag   = 0
$Global:ElapsedTime      = 30
$Global:OneSec           = 1
$Global:TwoSecs          = 2
$Global:FiveSecs         = 5
$Global:FifteenSecs      = 15
$Global:Hundredms        = 100
$Global:Once           = 1
$Global:Twice          = 2
$Global:Thrice         = 3
$Global:Fource         = 4
$Global:Five           = 5
$Global:Sixteen        = 16
$Global:Thirteen       = 13
$Global:Tence          = 10

$Global:PatternMatchSuccess = "Image Pattern Matched"
$Global:PatternMatchFailed  = "Image Pattern not Matched"
$Success = "PASS"
$Failure = "FAIL"

$PortOne   = 0x43
$PortTwo   = 0x46
$PortThree = 0x4A

$InitPortOne   = [Byte[]](0x42,$zero)
$InitPortTwo   = [Byte[]](0x45,$zero)
$InitPortThree = [Byte[]](0x48,$zero)
$zero   = 0
$one    = 1
$two    = 2
$three  = 0x04
$four   = 0x08
$five   = 0x10
$six    = 0x20
$seven  = 0x40
$eight  = 0x80

$ctrller1_A = [Byte[]]($PortTwo,$six)
$ctrller1_B = [Byte[]]($PortTwo,$five)
$ctrller1_X = [Byte[]]($PortTwo,$seven)
$ctrller1_Y = [Byte[]]($PortTwo,$eight) 

$ctrller2_A = [Byte[]]($PortOne,$two)
$ctrller2_B = [Byte[]]($PortOne,$one)
$ctrller2_X = [Byte[]]($PortOne,$three)
$ctrller2_Y = [Byte[]]($PortOne,$four) 

$ctrller1_XBox = [Byte[]]($PortThree,$seven)
$ctrller1_Rt   = [Byte[]]($PortThree,$three)
$ctrller1_Lt   = [Byte[]]($PortThree,$five)
$ctrller1_Up   = [Byte[]]($PortThree,$six)
$ctrller1_Dwn  = [Byte[]]($PortThree,$four)
$ctrller1_Menu = [Byte[]]($PortThree,$one)
$ctrller1_View = [Byte[]]($PortThree,$two)


$ctrller2_XBox = [Byte[]]($PortTwo,$three)
$ctrller2_Dwn  = [Byte[]]($PortOne,$eight)
$ctrller2_Lt   = [Byte[]]($PortTwo,$one)
$ctrller2_Up   = [Byte[]]($PortTwo,$two)
$ctrller2_Rt   = [Byte[]]($PortOne,$seven)
$ctrller2_Menu = [Byte[]]($PortOne,$five)
$ctrller2_View = [Byte[]]($PortOne,$six)
#>

$ExecutingDir            =  split-path $SCRIPT:MyInvocation.MyCommand.Path -parent
#Write-Host $ExecutingDir
$commonfnScript  = "CommonFunctions.ps1"
#$Scene2Script  = "Scenario2.ps1"
$constants       = "Constants.ps1"

$commonfnScript      =  [System.IO.Path]::Combine( $ExecutingDir, $commonfnScript )
$constantsScript     =  [System.IO.Path]::Combine( $ExecutingDir, $constants )
#$Scene2Script        =  [System.IO.Path]::Combine( $ExecutingDir, $Scene2Script )
$ImagePatternScript  =  [System.IO.Path]::Combine(  $ExecutingDir -replace "DAL", $ImagePatternScript )
$ImageCompareScript  =  [System.IO.Path]::Combine(  $ExecutingDir -replace "DAL", $ImageCompareScript )
$ImageCaptureScript  =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $ImageCaptureScript )
$SimulatorScript     =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $SwKBMScript )
$OCRScript           =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $OCRScript )
$Script_Serial       =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $SerialScript )
$Script_Objects      =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $Script_Objects )
$ReportScript        =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $ReportScript )
#$VideoCaptureScript =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $VideoCaptureScript )
$VideoCompareScript  =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $VideoCompareScript )
$AssemblyDir             = "$ExecutingDir\..\..\$AssemblyDir"
#Write-Host $AssemblyDir

<#$VideoDeviceID  = "AVerMedia U3 Video Capture"
$AudioDeviceID  =  "AVerMedia Ain (2- AVerMedia DarkCrystal 750)"
$Vid_Framerate  =  "30"
$Vid_Format     =  "1920x1080 YUY2, 16 bit"
$Aud_Format     =  "PCM, 44100 Hz, 16 Bits, 2 Channels"
$Vid_Type       =  "MP4"
#>

$CapturedImageFolder  = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $CapturedImageFolder )
$RefImageFolder       = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables",  $RefImageFolder )
$IconImageFolder      = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $IconImageFolder )
$VideoFolderPath      = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $VideoFolderPath )
$ImagesPath           = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $ImagesPath )
$Record_VideoPath     = [System.IO.Path]::Combine( $VideoFolderPath ,"video.mp4" )

# Loading the libraries ------------------------------------------------------------------------------

$General      = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir, "Hcl.eDAT.BaseModule.dll" ) )
$General      = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir, "Hcl.eDAT.BaseOCR.dll") )
$General      = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir, "Hcl.eDAT.BaseMM.dll") )
$General      = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir, "Hcl.eDAT.OCR.dll") )
$General      = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir, "Hcl.eDAT.Tesseract.dll") )
$General      = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir, "Hcl.eDAT.ImageCompare.dll") )
$General      = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir, "Hcl.eDAT.ImageCapture.dll") )
$General      = [Reflection.Assembly]::LoadFrom([System.IO.Path]::Combine( $AssemblyDir,"Hcl.eDAT.Video.dll"))
#$General     = [Reflection.Assembly]::LoadFrom([System.IO.Path]::Combine( $AssemblyDir,"Hcl.eDAT.VideoCapture.dll"))
#$General     = [Reflection.Assembly]::LoadFrom([System.IO.Path]::Combine( $AssemblyDir,"Hcl.eDAT.VFCapture.dll"))
$General      = [Reflection.Assembly]::LoadFrom([System.IO.Path]::Combine( $AssemblyDir,"Hcl.eDAT.VideoCompare.dll") )
$General      = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir, "Hcl.eDAT.Custom.dll") )
$General      = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir, "Microsoft.Practices.Unity.dll") )

# Loading the  scripts -----------------------------------------------------------------

$USBUIRT_DLL  = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir,  "UsbUirtManagedWrapper.dll")) 
$eDAT_USBUIRT = New-Object UsbUirt.Controller

. $Script_Objects
. $ImagePatternScript
. $ImageCompareScript 
. $OCRScript 
. $ReportScript
. $commonfnScript
. $SimulatorScript
. $VideoCompareScript
. $constantsScript



Function DeletePrevCapturedItems
{
# Remove Previous captured images and video
    $CapturedImagesDelete      = "$ExecutingDir\..\..\Images\Captured\XBoxConsole\*" 
    $CapturedVideoDelete       = "$ExecutingDir\..\..\Video\*" 
  
    Remove-Item –path $CapturedImagesDelete
    Remove-Item –path $CapturedVideoDelete
   # Remove-Item –path $Global:WindowsRecordPath
}

Function InitailizeLatency_Modules{
 

    $Status= InitializePatternMatch
 #   StatusCheck ( $Status )

    $Status= InitializePixelCompare
 #   StatusCheck ( $Status )
    
    $Status =  InitializeTesseract ($OCRLabel)
    StatusCheck ( $Status )  
  
    InitializeKBM

    $ReportFile       = "$ExecutingDir\..\..\Report\eDAT_XboxOne_Latency_TestReport_Template.doc"
    
  #  Write-Host $ReportFile -ForegroundColor "Blue"
        
    $Status = InitializeReport -Label $ReportLabel -ReportFile $ReportFile
   
    Init_VideoCmpr -Device $VideoCmprDevice   
    DeletePrevCapturedItems
}

Function DiscGameLaunchLatency_Calculation{
#if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Xbox_LaunchDiscGamenew"
    $IconImage = "Game_LaunchPage"
    $TestId = "TS01_TC2"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    $Vid_Duration   =  20
    $ret = 0
    $VideoPath = [System.IO.Path]::Combine( $VideoFolderPath ,$CapturedImage + ".mp4" )
    Remote_DiscEject -Nooftimes $Global:Once
   # Set_FixedDelay -DelayTime $Global:FiveSecs
    Open_Avermedia 
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Video_Recording
    Remote_DiscEject -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Vid_Duration
    Video_Recording
    Set_FixedDelay -DelayTime $Global:OneSec
    Exit_AverMedia 

    Copy-Item $Record_VideoPath $VideoPath
    
    Generate_Frames -Device $VideoCmprDevice -VideoPath $VideoPath
    Remove-Item $Record_VideoPath
    $ret =  ComputeFrame_BinarySearch_PatternMatch -img_name $CapturedImage 
    
   # $ret =  ComputeFrame_LinearSearch_PatternMatch -img_name $CapturedImage 
   
    if($Global:ExecutionStatus -eq $true)
    {
     Update_Report -TestId $TestId -TestDescription "Disc Game Launch Duration:$ret" -Status $Success
    
    }
    else{
     Update_Report -TestId $TestId -TestDescription "Disc Game Launch Duration:$ret" -Status $Failure
     }
     Set_FixedDelay -DelayTime $Global:FiveSecs
     
     $Global:ExecutionStatus=$true
 #}
}

Function PowerONLatency_Calculation{

    $CapturedImage = "console1_HmeScreen"
    $IconImage = "Latency_Home_search"
    $ExtractRegionLabel = "Latencyhome"
    $ExpectedText = "Search"
    $TestId = "TS01_TC1"
    $record_duration   =  70
    $VideoPath = [System.IO.Path]::Combine( $VideoFolderPath ,$CapturedImage + ".mp4" )
    Icon_ImgPath -img_name $IconImage
    Open_Avermedia 
 #   TriggerIRcmd_LongPress -EventName $Ctrller_XboxOne -Nooftimes $Global:Once
    Remote_Power -Nooftimes $Global:Once
    #Set_FixedDelay -DelayTime $Global:FiveSecs
    #Video_Recording
    Windows_Recording
    # TriggerIRcmd_ShortPress -EventName $Ctrller_Eject -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $record_duration
    #Video_Recording
    Exit_AverMedia 
   
    $ret = gci $Global:WindowsRecordPath | sort LastWriteTime | select -last 1 
    Copy-Item $ret.FullName $VideoPath
            
    Generate_Frames -Device  $VideoCmprDevice -VideoPath $VideoPath
    #Remove-Item $Global:WindowsRecordPath
    $ret = ComputeFrame_BinarySearch_OCR -video_name $CapturedImage -Exp_text $ExpectedText -RegionLabel $ExtractRegionLabel
   
    #$ret = ComputeFrame_LinearSearch_OCR -video_name $CapturedImage -Exp_text $ExpectedText -RegionLabel $ExtractRegionLabel
   
    if($Global:ExecutionStatus -eq $true)
    {
     Update_Report -TestId $TestId -TestDescription "Device BootUp Duration:$ret" -Status $Success
    
    }
    else{
     Update_Report -TestId $TestId -TestDescription "Device BootUp Duration:$ret" -Status $Failure
     }
    Set_FixedDelay -DelayTime $Global:OneSec
}

Function Prerequest_Latency{

  Remote_OneGuide -Nooftimes $Global:Once
 # TriggerIRcmd_LongPress -EventName $Ctrller_Right -Nooftimes $Global:Once
  Remote_MoveLeft -Nooftimes $Global:Thrice
  Remote_Enter -Nooftimes $Global:Once

}
Function SignoutnShutdown_Console{

#sign_out
    Set_FixedDelay -DelayTime $Global:OneSec
    Remote_OneGuide -Nooftimes $Global:Once
    Remote_MoveLeft -Nooftimes $Global:Fource
    Remote_MoveDown -Nooftimes $Global:Once
    Remote_Enter -Nooftimes $Global:Once        
    Set_FixedDelay -DelayTime $Global:FiveSecs

   #Shutdown
    Remote_Power -Nooftimes $Global:Once
    Remote_MoveUp -Nooftimes $Global:Once
    Remote_Enter -Nooftimes $Global:Once
}


Function QuitGame_Latency{

    Set_FixedDelay -DelayTime $Global:OneSec
    Remote_OneGuide -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:OneSec
    Remote_MoveDown -Nooftimes $Global:Twice
    Remote_Menu -Nooftimes $Global:Once        
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Remote_MoveDown -Nooftimes $Global:Fource
    Set_FixedDelay -DelayTime $Global:OneSec
    Remote_Enter -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:OneSec
    Remote_OneGuide -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:OneSec
}

Function DIspose_All{
    $oImageCompare = $null
    $oOCR = $null
    $oReport = $null

} 
