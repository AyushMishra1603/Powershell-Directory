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
$AnalogScript            = "eDAT\eDAT_Analog_Script.ps1"


#---------------------------------------------------

$CapturedImageFolder     = "Images\Captured\Console\"
$RefImageFolder          = "Images\Reference\XBoxConsole\"
$IconImageFolder         = "Images\Icon\XBoxConsole\"
$VideoFolderPath         = "Video\"
$ImagesPath              = "Images\"
$Global:WindowsRecordPath= "C:\Record"



$ExecutingDir            =  split-path $SCRIPT:MyInvocation.MyCommand.Path -parent
#Write-Host $ExecutingDir
$commonfnScript  =  "CommonFunctions.ps1"
$Scene2Script    =  "XBoxConsoleRelay.ps1"
$constants       =  "Constants.ps1"
$UserFunctions   =  "CrackDown3.ps1"
$UserFunctions_GOW   =  "gearsofwar.ps1"
$XboxGamePlay    =  "Xbox_GamePlay.ps1"
$UserFunctions_SOT   =  "SeaofThieves.ps1"
$UserFunctions_Forza   =  "ForzaHorizon4.ps1"
$UserFunctions_Halo   =  "Halo5.ps1"
$UserFunctions_Ryse   =  "Ryse.ps1"
$USerFunction_Deblob = "Deblob.ps1"
$USerFunction_RocketLeague = "RocketLeague.ps1"

$commonfnScript      =  [System.IO.Path]::Combine( $ExecutingDir, $commonfnScript )
$constantsScript     =  [System.IO.Path]::Combine( $ExecutingDir, $constants )
$Scene2Script        =  [System.IO.Path]::Combine( $ExecutingDir, $Scene2Script )
$UserFunctionsScript =  [System.IO.Path]::Combine( $ExecutingDir, $UserFunctions )
$UserFunctionsScript_GOW =  [System.IO.Path]::Combine( $ExecutingDir, $UserFunctions_GOW )
$XboxGamePlay        =  [System.IO.Path]::Combine( $ExecutingDir, $XboxGamePlay )
$UserFunctions_SOT =  [System.IO.Path]::Combine( $ExecutingDir, $UserFunctions_SOT )
$UserFunctions_Forza =  [System.IO.Path]::Combine( $ExecutingDir, $UserFunctions_Forza )
$UserFunctions_Halo =  [System.IO.Path]::Combine( $ExecutingDir, $UserFunctions_Halo )
$UserFunctions_Ryse =  [System.IO.Path]::Combine( $ExecutingDir, $UserFunctions_Ryse )
$USerFunctions_Deblob =  [System.IO.Path]::Combine( $ExecutingDir, $USerFunction_Deblob )
$USerFunctions_RocketLeague =  [System.IO.Path]::Combine( $ExecutingDir, $USerFunction_RocketLeague )

$ImagePatternScript  =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $ImagePatternScript )
$ImageCompareScript  =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $ImageCompareScript )
$ImageCaptureScript  =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $ImageCaptureScript )
$SimulatorScript     =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $SwKBMScript )
$OCRScript           =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $OCRScript )
$Script_Serial       =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $SerialScript )
$Script_Objects      =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $Script_Objects )
$ReportScript        =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $ReportScript )
#$VideoCaptureScript =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $VideoCaptureScript )
$VideoCompareScript  =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $VideoCompareScript )
$AnalogScript        =  [System.IO.Path]::Combine( $ExecutingDir -replace "DAL", $AnalogScript )
$AssemblyDir         = "$ExecutingDir\..\..\$AssemblyDir"
#Write-Host $AssemblyDir


$CapturedImageFolder     = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $CapturedImageFolder )
$RefImageFolder          = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $RefImageFolder )
$IconImageFolder         = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $IconImageFolder )
$VideoFolderPath         = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $VideoFolderPath )
$ImagesPath              = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $ImagesPath )
$Record_VideoPath        = [System.IO.Path]::Combine( $VideoFolderPath ,"video.mp4" )

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

#$USBUIRT_DLL  = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir,  "UsbUirtManagedWrapper.dll")) 
#$eDAT_USBUIRT       = New-Object UsbUirt.Controller

Add-Type -AssemblyName System.speech
$VoiceInput = New-Object System.Speech.Synthesis.SpeechSynthesizer

#$IRtx = "$ExecutingDir\..\..\Executables\uutx.exe"
$Video_Recording = "$ExecutingDir\..\..\Executables\ffmpeg.exe"

. $Script_Serial
. $Script_Objects
. $ImagePatternScript
. $ImageCompareScript 
. $ImageCaptureScript 
. $OCRScript 
. $ReportScript
. $commonfnScript
. $Scene2Script
. $SimulatorScript
. $constantsScript
#. $VideoCaptureScript
. $VideoCompareScript
. $AnalogScript
. $UserFunctionsScript
. $UserFunctionsScript_GOW
. $UserFunctions_SOT
. $UserFunctions_Forza
. $UserFunctions_Halo
. $UserFunctions_Ryse
. $XboxGamePlay
. $UserFunctions_Deblob
. $UserFunctions_RocketLeague
#. $IRtx



Function InitailizeModules{
 

    $Status= InitializePatternMatch

    $Status= InitializePixelCompare
    
    $Status =  InitializeTesseract ($OCRLabel)
    StatusCheck ( $Status )
   
    Intialize_Serial -SerialPort $SerialLabel1
    Intialize_Serial -SerialPort $SerialLabel2

    Connect_Serial -SerialPort $SerialLabel1
    Connect_Serial -SerialPort $SerialLabel2

    Initialize_Report

    InitializeKBM

    Init_ImageModule
 
 
}


Function Init_Analog{
  AnalogInitialize "NI_Dev1" 

  SetDefaultValue

}


Function DeletePrevCapturedItems
{
# Remove Previous captured images and video
    $CapturedImagesDelete      = "$ExecutingDir\..\..\Images\Captured\XBoxConsole\*" 
    $CapturedVideoDelete       = "$ExecutingDir\..\..\Video\*" 
  
    Remove-Item –path $CapturedImagesDelete
    Remove-Item –path $CapturedVideoDelete
   # Remove-Item –path $Global:WindowsRecordPath
}


Function Initialize_Report{
   $ReportFile       = "$ExecutingDir\..\..\Report\eDAT_XboxOne_TestReport_Template.doc"
        
    $Status = InitializeReport -Label $ReportLabel -ReportFile $ReportFile
    
}


Function DIspose_All{
   
    $Status = ImageDevice_Disconnect ( $ImageDevice )
    StatusCheck ( $Status )
    $oImageCompare = $null
    $oOCR = $null
    DisconnectKBM
    Disconnect_Serial -SerialPort $SerialLabel1
   Disconnect_Serial -SerialPort $SerialLabel2
    DisposeReport
    $Rport = $null 


} 


Function Init_ImageModule{

    $Status =   ImageCapture_Initialise ( $ImageDevice )
    StatusCheck ( $Status )
     
    $Status = ImageDevice_Connect ( $ImageDevice )
    StatusCheck ( $Status )
    
    $Global:ExecutionStatus = $true

}

Function Initialize_RelayPorts{

  Press_Ctrller -Data $InitPortOne 
  Press_Ctrller -Data $InitPortTwo 
  Press_Ctrller -Data $InitPortThree 

}



Function Search_Game{
    Remote_MoveRight -Nooftimes $Global:Once
    Remote_MoveDown -Nooftimes $Global:Once
    Remote_Enter -Nooftimes $Global:Once

    Remote_MoveUp -Nooftimes $Global:Once
    Remote_Enter -Nooftimes $Global:Once
  #  Set_FixedDelay -DelayTime $Global:OneSec

    Remote_MoveDown -Nooftimes $Global:Twice
    Remote_Enter -Nooftimes $Global:Once

    Remote_MoveRight -Nooftimes $Global:Thrice
    Remote_MoveUp -Nooftimes $Global:Twice
    Remote_Enter -Nooftimes $Global:Once
 #   Set_FixedDelay -DelayTime $Global:OneSec
    Remote_MoveDown -Nooftimes $Global:Once
    Remote_MoveLeft -Nooftimes $Global:Thrice
    Remote_Enter -Nooftimes $Global:Once

    Remote_MoveLeft -Nooftimes $Global:Fource
    Remote_MoveUp -Nooftimes $Global:Once
    Remote_Enter -Nooftimes $Global:Once

    Remote_MoveRight -Nooftimes $Global:Twice
    Remote_Enter -Nooftimes $Global:Once

  #  Remote_MoveUp -Nooftimes $Global:Thrice
  #  Remote_Enter -Nooftimes $Global:Once

}


Function Xbox_bootupscreen{

    $CapturedImage = "Xbox_LogoScreen"
    $IconImage = "xbox_logo"
   
    $Global:ElapsedTime = 15           #First time Power on console is taking more time to home page
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    
    $ret = VerifyPatternMatch 
   if($ret -eq $true){
            $Global:ElapsedTime = 50
  #         $Global:ExecutionStatus = $true
    }
    else{
            $Global:ElapsedTime = 30
    }
    
}


Function Verify_HmeScreen{

    $CapturedImage = "Xbox_HmeScreen"
    $IconImage = "signin"
    $ExtractRegionLabel = "signIN_Top1"
    $ExpectedText = "sign in"
    $TestId = "TS01_TC1"
    $Global:ElapsedTime = 50           #First time Power on console is taking more time to home page
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Remote_Power -Nooftimes $Global:Once

    $ret = VerifyOCRTextMatch -ExtractRegionLabel $ExtractRegionLabel -PageLabel $Global:RegLabel -ExpectedText $ExpectedText 
        
    if($ret -eq $true){
 #     if($console -eq $one) 
         Update_Report -TestId $TestId -TestDescription $ExpectedText -Status $Success 
          $Global:ExecutionStatus = $true
    }
    else{
  #   if($console -eq $one) 
  #      {   
          Update_Report -TestId $TestId -TestDescription $ExpectedText -Status $Failure                  
  #      }
           $Global:ExecutionStatus = $false   
    }
   $Global:ElapsedTime = 30
   return $ret
}

Function Goto_XBoxOneGuide{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Xbox_OneGuide"
    $IconImage = "Xbox_Hme_Logo"
    $TestId = "TS01_TC2"
  
   Captured_ImgPath -img_name $CapturedImage
   Icon_ImgPath -img_name $IconImage
   Remote_OneGuide -Nooftimes $Global:Once
   Remote_MoveRight -Nooftimes $Global:Once
 
   $ret = VerifyPatternMatch 
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

Function Choose_Profile{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Xbox_Navigate2Profile"
    $IconImage = "SelectAccount"
    $ExtractRegionLabel = "Signin_XboxGuide"
    $ExpectedText = "Sign in"
    $TestId = "TS01_TC3"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_MoveLeft -Nooftimes $Global:Thrice

    $ret = VerifyOCRTextMatch -ExtractRegionLabel $ExtractRegionLabel -PageLabel $Global:RegLabel -ExpectedText $ExpectedText 
    if($ret -eq $true){
          Update_Report -TestId $TestId -TestDescription $ExpectedText -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $ExpectedText -Status $Failure
           $Global:ExecutionStatus = $false
    }
    }
}

Function Select_Profile{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Xbox_SelectProfile"
    $IconImage = "Xbox_GuideLogo"
    $TestId = "TS01_TC4"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    $ret =  VerifyPatternMatch 
   
    if($ret -eq $true){
          Remote_Enter -Nooftimes $Global:Once
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
         $CapturedImage ="tmpHomepage"
         Captured_ImgPath -img_name $CapturedImage
       
        $Status=VerifyOCRTextMatch -ExtractRegionLabel "Verifyhome" -PageLabel "label1" -ExpectedText "Search"

        if($Status){
         $ExtractRegionLabel = "signIN_Top1"
         $ExpectedText = "sign in"
         #$ret = VerifyOCRTextMatch -ExtractRegionLabel $ExtractRegionLabel -PageLabel "label1" -ExpectedText $ExpectedText 
        
         $extract_txt = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $ExtractRegionLabel

        if($extract_txt -eq $ExpectedText)
         {
         $Global:ExecutionStatus = $false
         }
        else{
         $Global:ExecutionStatus = $true
         }        
        }
    }
    else{
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }   

}
}


Function Highlight_Settings{
#Write-Host "highlight Setting "
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "XboxOneGuide"
    $IconImage = "Xbox_Hme_Logo"
    $TestId = "TS01_TC5"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_OneGuide -Nooftimes $Global:Once
    $ret =  VerifyPatternMatch 
    if($ret -eq $true){
       Remote_MoveRight -Nooftimes $Global:Thrice
       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
        $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
   }
}


Function Enter_SettingsMenu{
#Write-Host "Enter Setting menu"
 if($Global:ExecutionStatus -eq $true){
  
   $CapturedImage = "XboxOne_HighlightSettingsmenu"
    $IconImage = "settings"
    $TestId = "TS01_TC6"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_MoveDown -Nooftimes $Global:Once
    $ret =  VerifyPatternMatch
   
    if($ret -eq $true){
       Remote_Enter -Nooftimes $Global:Once      
     
      $CapturedImage = "AccountScreen"
      $IconImage = "Account"
      $ExpectedText = "Account"
      Captured_ImgPath -img_name $CapturedImage
      Icon_ImgPath -img_name $IconImage
      $ExtractRegionLabel = "VerifyAccount"
      $ret = VerifyOCRTextMatch -ExtractRegionLabel $ExtractRegionLabel -PageLabel $Global:RegLabel -ExpectedText $ExpectedText 
    
      Remote_MoveLeft -Nooftimes $Global:Twice
      #Remote_MoveUp -Nooftimes $Global:Tence
      Remote_MoveUpLong -Nooftimes 15 
      Update_Report -TestId $TestId -TestDescription $ExpectedText -Status $Success
      $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $ExpectedText -Status $Failure
          $Global:ExecutionStatus = $false
    }
   
    }
}

Function Goto_ContentRestrictions{

 Verify_SignInSecurity

 Verify_Contentrestrictions

}

Function Select_AccesstoContent{
if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Highlight_Access2Content"
    $IconImage = "Access2Contentnew"
    $IconImage1 = "Access2Content"
    $TestId = "TS01_TC8"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_Enter -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:FiveSecs
    $ret = VerifyPatternMatch 
    Icon_ImgPath -img_name $IconImage1
    if($ret -eq $true){
       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
        #Set_FixedDelay -DelayTime $Global:FiveSecs
        $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
          $Global:ExecutionStatus = $false
    }
   }
}

Function Set_AgeLimit{

   Verify_Access2ContentnApps
   Select_AppropriateAge        
   Confirm_SelectedAge
   

}

Function Launch_NewGame{
    Enter_SearchPage
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Search_Game
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Select_Game
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Launch_Game -count $one
       
}




Function Verify_SignInSecurity{
if($Global:ExecutionStatus -eq $true){

    $CapturedImage = "Select_SignInSecurity"
    $IconImage = "SignInSecurity"
    $ExtractRegionLabel = "SignInSecurity"
    $ExpectedText = "Sign-in, security"
    $TestId = "TS01_TC7a"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_MoveRight -Nooftimes $Global:Once

    $ret = VerifyOCRTextMatch -ExtractRegionLabel $ExtractRegionLabel -PageLabel $Global:RegLabel -ExpectedText $ExpectedText 
    if($ret -eq $true){
       Update_Report -TestId $TestId -TestDescription $ExpectedText -Status $Success
       $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $ExpectedText -Status $Failure
          $Global:ExecutionStatus = $false
    }
    }
}


Function Verify_Contentrestrictions{
if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Highlight_ContentRestrictions"
    $IconImage = "Content_Restrictions"
    $ExtractRegionLabel = "ContentRestrictions"
    $ExpectedText = "Content restrictions"
    $TestId = "TS01_TC7b"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_MoveDown -Nooftimes $Global:Thrice

    $ret = VerifyOCRTextMatch -ExtractRegionLabel $ExtractRegionLabel -PageLabel $Global:RegLabel -ExpectedText $ExpectedText 
    if($ret -eq $true){
       Update_Report -TestId $TestId -TestDescription $ExpectedText -Status $Success
       $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $ExpectedText -Status $Failure
          $Global:ExecutionStatus = $false
    }
   }
}

Function Verify_Access2ContentnApps{
if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Access2ContentnApps"
    $IconImage = "Access2ContentnAppsbox"
    $IconImage1 = "Access2ContentnApps"
    $TestId = "TS01_TC9a"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_Enter -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:FiveSecs
    $ret = VerifyPatternMatch 
    Icon_ImgPath -img_name $IconImage1
    if($ret -eq $true){
       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           #Set_FixedDelay -DelayTime $Global:FiveSecs
           $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
          $Global:ExecutionStatus = $false
    }

  }
}

Function Verify_Unrestricted{
    
    $CapturedImage = "Access2ContentnApps"
    $IconImage = "Unrestricted1"    
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    $ret = Match_Pattern -Cap_Img $Global:CapturedImgPath -Icon_Img $Global:IconImgPath
    return $ret.Data.MatchFound
}

Function Select_AppropriateAge{
if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Verify_Appropriateage"
    $IconImage = "Appropriateage"
    $TestId = "TS01_TC9b"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_Enter -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:FiveSecs
    $ret = VerifyPatternMatch 
    if($ret -eq $true){
        if(($ret = Verify_Unrestricted) -eq $false) 
        {
            #Remote_MoveUp -Nooftimes $Global:Sixteen
            Remote_MoveUpLong -Nooftimes 20 
            #Set_FixedDelay -DelayTime $Global:OneSec
        }
        Remote_MoveDown -Nooftimes $Global:Thirteen
        #Set_FixedDelay -DelayTime $Global:OneSec  
        Remote_Enter -Nooftimes $Global:Once 
        Icon_ImgPath -img_name $IconImage
        Set_FixedDelay -DelayTime $Global:TwoSecs
        Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
        Set_FixedDelay -DelayTime $Global:FiveSecs 
        $Global:ExecutionStatus = $true
    }
    
    else{
           Icon_ImgPath -img_name $IconImage
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
          $Global:ExecutionStatus = $false
    }
   
 }
}


Function Confirm_SelectedAge{
if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Select_AppropriateAge"
    $IconImage = "Access2ContentnApps"
    $TestId = "TS01_TC9c"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
   $ret = VerifyPatternMatch 
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


Function Exit_Settings{
if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Xbox_HmePage"
    $IconImage = "Xbox_HmePageLogo"
    $TestId = "TS01_TC10"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_OneGuide -Nooftimes $Global:Once
    Remote_Enter -Nooftimes $Global:Once

    $ret = VerifyPatternMatch 
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

Function Enter_SearchPage{
if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "SearchPage"
    $IconImage = "SearchPage"
    $TestId = "TS01_TC11"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
 #   TriggerIRcmd_LongPress -EventName $Ctrller_Y -Nooftimes $Global:Once
    Remote_Search -Nooftimes $Global:Once
    $ret = VerifyPatternMatch 
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
   
    
Function Launch_Game($count){
    if($Global:ExecutionStatus -eq $true)
{
    
    if($count -eq $one) {  $testID = "TS01_TC12"  }
    else {  $testID = "TS01_TC13"  }
    $exp_text = "rated above"

    $CapturedImage = "Launch_Game" + $count
    $IconImage = "JumpJet_LaunchScreen"
    $IconImage1 = "GameLaunchError"
    $Reg_lbl = "Game_LaunchError"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    $stopwatch = [system.diagnostics.stopwatch]::StartNew()
    $Status=$false
   while($true)
   {
       Image_Capture -ImagePath $Global:CapturedImgPath
       [string] $extract_txt = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $Reg_lbl 
       
       if($extract_txt.Contains($exp_text))     
       {
           Icon_ImgPath -img_name $IconImage1
       #    Update_Report -TestId $testID -TestDescription $exp_text -Status $Success
           Remote_MoveRight -Nooftimes $Global:Once
           Remote_Enter -Nooftimes $Global:Once
           if($count -eq $one) 
           {  
           $Status=$true 
           Update_Report -TestId $testID -TestDescription $exp_text -Status $Success 
           }
           else 
           {  
           $Status=$false 
           Update_Report -TestId $testID -TestDescription $exp_text -Status $Failure 
           } 
           $stopwatch.Stop()
           break;
       }
            
       else{
           $ret = Match_Pattern -Cap_Img $Global:CapturedImgPath -Icon_Img $Global:IconImgPath
           if($ret.Data.MatchFound -eq "True")
           {
              $stopwatch.Stop()
        #      Update_Report -TestId $testID -TestDescription $exp_text -Status $Failure
               if($count -eq $one) 
               { 
                $Status=$false 
                Update_Report -TestId $testID -TestDescription $Global:PatternMatchFailed -Status $Failure  
                } 
               else 
               {  
               $Status=$true
               Update_Report -TestId $testID -TestDescription $Global:PatternMatchSuccess -Status $Success  
               } 
              break;
       
           }
                
       }  
       if($stopwatch.Elapsed.Seconds -gt $Global:ElapsedTime)
       {
            Write-Host $stopwatch.Elapsed.Seconds
            Update_Report -TestId $testID -TestDescription $exp_text + "or" $Global:PatternMatchFailed -Status $Failure
            $Status=$false
            $stopwatch.Stop()           
            break;
       }
   }
   if($Status -eq $true)
   {
   
    $Global:ExecutionStatus = $true
   }
   else
   {
   #Update_Report -TestId $testID -TestDescription $exp_text -Status $Failure
    $Global:ExecutionStatus = $false
   }
}
}



Function Quit_Game{
if($Global:ExecutionStatus -eq $true){
    $Status=$true;
    $Global:ElapsedTime = 10
    $CapturedImage = "Quit_Game"
    $IconImage = "Quit_GameIcon"
  #  $TestId = "TS01_TC11"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    Remote_OneGuide -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:OneSec
    Remote_MoveDown -Nooftimes $Global:Twice
    Remote_Menu -Nooftimes $Global:Once        
  #  Set_FixedDelay -DelayTime $Global:OneSec

    $ret = VerifyPatternMatch 
    if($ret -eq $true){

    Remote_MoveDown -Nooftimes $Global:Fource
    Set_FixedDelay -DelayTime $Global:OneSec
    Remote_Enter -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:OneSec
    }

    Remote_OneGuide -Nooftimes $Global:Once
    #Set_FixedDelay -DelayTime $Global:FifteenSecs
    $CapturedImage ="tmpHomepage"
    Captured_ImgPath -img_name $CapturedImage  
     $Global:ElapsedTime = 30   
    $Status=VerifyOCRTextMatch -ExtractRegionLabel "Verifyhome" -PageLabel $Global:RegLabel -ExpectedText "Search"

    if($Status -eq $true)
    {
    $Global:ExecutionStatus = $true
    }
    else
    {
    $Global:ExecutionStatus = $false
    }
}
}

Function Select_Game{
if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Select_Game"
    $IconImage = "Game_Icon"
  #  $TestId = "TS01_TC11"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    $ret = VerifyPatternMatch 
    if($ret -eq $true){
      Remote_MoveUp -Nooftimes $Global:Thrice
      Remote_Enter -Nooftimes $Global:Once
      $Global:ExecutionStatus = $true
    }
    else
    {
        $Global:ExecutionStatus = $false
    }
  }
}


Function Disc_LaunchGame{
if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Xbox_LaunchDiscGame"
    $IconImage = "Game_LaunchPage"
    $TestId = "TS03_TC1"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_DiscEject -Nooftimes $Global:Once
 #   TriggerIRcmd_ShortPress -EventName $Ctrller_Eject -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:FiveSecs
    Remote_DiscEject -Nooftimes $Global:Once
 #   TriggerIRcmd_ShortPress -EventName $Ctrller_Eject -Nooftimes $Global:Once
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


Function Verify_GameInteractiveScreen{
    if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Game_InteractiveScreen"
    $IconImage = "InteractiveScreen1"  
    $IconImage1 = "GameLaunchError" 
    $testID = "TS03_TC2"
    $exp_text = "rated above"  
    $Reg_lbl = "Game_LaunchError"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    $Icon_ImgPath1   =  [System.IO.Path]::Combine( $IconImageFolder, "GAmeLaunchError1.bmp" )
    $Global:ElapsedTime = 60
    $stopwatch = [system.diagnostics.stopwatch]::StartNew()
    $Status=$false
   while($true)
   {
   [string] $extract_txt=""
       Set_FixedDelay -DelayTime $Global:OneSec
       $ret = Image_Capture -ImagePath $Global:CapturedImgPath
       if($ret)
        {
        $extract_txt = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $Reg_lbl 
        $ret = Match_Pattern -Cap_Img $Global:CapturedImgPath -Icon_Img $Global:IconImgPath
        }
        if($extract_txt.Contains($exp_text))     
        {
           Icon_ImgPath -img_name $IconImage1
           Update_Report -TestId $testID -TestDescription $exp_text -Status $Failure
           Remote_MoveRight -Nooftimes $Global:Once
           Remote_Enter -Nooftimes $Global:Once
           $Status=$true
           $stopwatch.Stop()
           break;
        }   
                        
        elseif($ret.Data.MatchFound -eq $true)
        {
            $stopwatch.Stop()
            Update_Report -TestId $testID -TestDescription $exp_text -Status $Success
            $Status=$true
            break;
       
        }     
         
       else
       {
        if($ret)
            {
           $ret1 = Match_Pattern -Cap_Img $Global:CapturedImgPath -Icon_Img $Icon_ImgPath1
            }
           if($ret1.Data.MatchFound -eq $true) 
           {
                 Remote_MoveRight -Nooftimes $Global:Once
                 Remote_Enter -Nooftimes $Global:Once
                 $Status=$true
           }
       
       }
       if($stopwatch.Elapsed.Seconds -gt $Global:ElapsedTime)
       {
            Write-Host $stopwatch.Elapsed.Seconds
            Update_Report -TestId $testID -TestDescription $exp_text -Status $Failure
            $stopwatch.Stop()           
            $Status=$false
            break;
       }
   }
   if($Status -eq $true)
   {
    $Global:ExecutionStatus = $true
   }
   else
   {
    $Global:ExecutionStatus = $false
   }
}
}



Function ExitGame{
  if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Exit_Game"
    $IconImage = "Xbox_Hme_Logo"
    $TestId = "TS03_TC3"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Remote_OneGuide -Nooftimes $Global:Once  

    $ret =  VerifyPatternMatch 
    if($ret -eq $true){
       Remote_Enter -Nooftimes $Global:Once
   #    TriggerIRcmd_ShortPress -EventName $Ctrller_A -Nooftimes $Global:Once
       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
       $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
          $Global:ExecutionStatus = $false
    }
}
}

  

Function Sequence3_Prerequisites{
 
        $Status=$true;
        Remote_OneGuide -Nooftimes $Global:Once
        Remote_MoveRight -Nooftimes $Global:Thrice
        Remote_MoveDown -Nooftimes $Global:Once
        Remote_Enter -Nooftimes $Global:Once
        Remote_MoveRight -Nooftimes $Global:Once
        Remote_MoveDown -Nooftimes $Global:Thrice
        Remote_Enter -Nooftimes $Global:Once

        $CapturedImage ="tmpAccess2Contentnew"
        $IconImage = "Access2Contentnew"
        Captured_ImgPath -img_name $CapturedImage
        Icon_ImgPath -img_name $IconImage
        
        $Status=VerifyPatternMatch

        if($Status){
        Remote_Enter -Nooftimes $Global:Once

        $CapturedImage ="tmpAccess2ContentnAppsbox"
        $IconImage = "Access2ContentnAppsbox"
        Captured_ImgPath -img_name $CapturedImage
        Icon_ImgPath -img_name $IconImage
        $Status=VerifyPatternMatch 

        if($Status){
        Remote_Enter -Nooftimes $Global:Once
        #Remote_MoveUp -Nooftimes $Global:Sixteen
        Remote_MoveUpLong -Nooftimes 20
        Remote_Enter -Nooftimes $Global:Once

        $CapturedImage ="tmpUnrestricted"
        $IconImage = "Unrestricted"
        Captured_ImgPath -img_name $CapturedImage
        Icon_ImgPath -img_name $IconImage
        $Status=VerifyPatternMatch

        if($Status){
        Remote_OneGuide -Nooftimes $Global:Once
        Remote_Enter -Nooftimes $Global:Once        
        $CapturedImage ="tmpHomepage"
        Captured_ImgPath -img_name $CapturedImage  
        
        $Status=VerifyOCRTextMatch -ExtractRegionLabel "Verifyhome" -PageLabel $Global:RegLabel -ExpectedText "Search"
        }		
        }
        }
        if($Status){         
        $Global:ExecutionStatus = $true
        
        }else{
        $Global:ExecutionStatus = $false
        }		
    
    }


Function SignOut_ShutDownConsole{
     if($Global:ExecutionStatus -eq $true){
    Remote_OneGuide -Nooftimes $Global:Once
    Remote_MoveLeft -Nooftimes $Global:Fource
    Remote_MoveDown -Nooftimes $Global:Once
    Remote_Enter -Nooftimes $Global:Once        
         
    $CapturedImage = "Xbox_HmeScreen"
    $ExtractRegionLabel = "signIN_Top1"
    $ExpectedText = "sign in"    
    Captured_ImgPath -img_name $CapturedImage  

    $ret = VerifyOCRTextMatch -ExtractRegionLabel $ExtractRegionLabel -PageLabel $Global:RegLabel -ExpectedText $ExpectedText 
    if($ret -eq $true){
      $Global:ExecutionStatus = $true
        Remote_Power -Nooftimes $Global:Once
        Remote_MoveUp -Nooftimes $Global:Once
        Remote_Enter -Nooftimes $Global:Once 
     #   TriggerIRcmd_ShortPress -EventName $Ctrller_Up -Nooftimes $Global:Once
    #    TriggerIRcmd_ShortPress -EventName $Ctrller_A -Nooftimes $Global:Once
    }
    else{
       $Global:ExecutionStatus = $false   
    }   

       
    # return  $Global:ExecutionStatus 
    }    
}

Function CopyReportTemplate
{

Copy-Item "$ExecutingDir\..\..\Report\Templates\eDAT_XboxOne_TestReport_Template.doc" -Destination "$ExecutingDir\..\..\Report"
}

Function MoveReport($IterationNo)
{
$filename = "eDAT_XboxOne_TestReport_Template" + "_$IterationNo" + ".doc"
Move-Item -Path "$ExecutingDir\..\..\Report\eDAT_XboxOne_TestReport_Template.doc" -Destination "$ExecutingDir\..\..\Report\IterationReport\$filename"
}



Function GoTo_SystemInfoSettings_Console1{   

    $CapturedImage = "Console1_SystemInfo"
    Captured_ImgPath -img_name $CapturedImage
 #   Icon_ImgPath -img_name $CapturedImage
    $TestId =  "33f33f.eg2452.feaqwg4.32456.01"

    Remote_MoveDown -Nooftimes $Global:Thrice
    Set_FixedDelay -DelayTime $Global:TwoSecs

    Remote_MoveRight -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Remote_Enter -Nooftimes $Global:Once

    Set_FixedDelay -DelayTime $Global:FiveSecs

    Image_Capture -ImagePath $Global:CapturedImgPath 
    UpdateReport_SystemInfo -TestId $TestId -TestDescription "Xbox One Media Remote / Xbox One Controller" -Status "NA"
   
    Remote_Exit -Nooftimes $Global:Once
 #   TriggerIRcmd_ShortPress -EventName $Ctrller_B -Nooftimes $Global:Once
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Remote_MoveLeft -Nooftimes $Global:Once
    Remote_MoveUp -Nooftimes $Global:Thrice
    Set_FixedDelay -DelayTime $Global:TwoSecs
}


