Function Goto_XBoxOneGuide_Seq2($relay_cmd){
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Xbox_OneGuide_Seq2"
    $IconImage = "Xbox_Hme_Logo"

   Captured_ImgPath -img_name $CapturedImage
   Icon_ImgPath -img_name $IconImage
   Press_Ctrller -Data $relay_cmd
 
   $ret = VerifyPatternMatch 
   if($ret -eq $true){
           $Global:ExecutionStatus = $true
    }
    else{
           $Global:ExecutionStatus = $false
    }
  }
   
}

Function Verify_HeadPhoneConnection{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "headphone"
    $IconImage = "headphone"
    $TestId = "TS02_TC1"
  
   Captured_ImgPath -img_name $CapturedImage
   Icon_ImgPath -img_name $IconImage
   ConsoleOne_CtrllerDwn
   ConsoleOne_CtrllerDwn
   ConsoleOne_CtrllerEnter
 
   $ret = VerifyPatternMatch 
   if($ret -eq $true){
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
    ConsoleOne_CtrllerExit
    ConsoleOne_CtrllerExit
  }
   
}


Function Invite_Friend2Party{
    Search_Friend
    Select_Friend
    Validate_Frd
    Send_Invitation
}


Function Search_Friend{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Xbox_Navigate2friendlist"
    $IconImage = "online_frd"
    $IconImage1 = "zero_frdz"
    $TestId = "TS02_TC1"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    $Icon_ImgPath1   =  [System.IO.Path]::Combine( $IconImageFolder, $IconImage1 + ".bmp" )
 #   ConsoleOne_CtrllerXbox
    ConsoleOne_CtrllerLft
    $status =  $false
   $stopwatch = [system.diagnostics.stopwatch]::StartNew()
   while($true)
   {
        Image_Capture -ImagePath $Global:CapturedImgPath
        $ret = Match_Pattern -Cap_Img $Global:CapturedImgPath -Icon_Img $Global:IconImgPath
        if($ret.Data.MatchFound -eq $true) 
        {
            $stopwatch.Stop()
            $status =  $true
            break;
        }
        else{
            $ret = Match_Pattern -Cap_Img $Global:CapturedImgPath -Icon_Img $Icon_ImgPath1
            if($ret.Data.MatchFound -eq $true) 
            {
                $stopwatch.Stop()
                $status =  $false
                break;
            }
        }
     
       if($stopwatch.Elapsed.Seconds -gt $Global:ElapsedTime)
       {
            $stopwatch.Stop()
            $status =  $false 
            break;       
       }
   }

    if($status -eq $true){
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
    }
}

Function Select_Friend{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "select_friend"
    $IconImage = "online_frd1"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    ConsoleOne_CtrllerEnter
    $ret = VerifyPatternMatch 
    if($ret -eq $true){
   #       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
  #        Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
    }
}

Function Validate_Frd{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "verify_friend"
    $IconImage = "friend_logo"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    ConsoleOne_CtrllerEnter
    
    $ret = VerifyPatternMatch 
    if($ret -eq $true){
 #         Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
  #        Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
    }
}


Function Send_Invitation{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "invite_friend"
    $IconImage = "invite_frd"
    
    $TestId = "TS02_TC2"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    ConsoleOne_CtrllerEnter
   
    $ret = VerifyPatternMatch 
    if($ret -eq $true){
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
          Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
    ConsoleOne_CtrllerXbox
    }
}

Function Scene2_Prerequisites{
    #ConsoleTwo_CtrllerPwr
    Set_FixedDelay -DelayTime $Global:OneSec
    Switch_Console -Switch $Console_Two
    Set_FixedDelay -DelayTime $Global:FiveSecs
 #   Xbox_bootupscreen
    Verify_ActLogin_Console2
    $Global:ElapsedTime = 30
}



Function Verify_ActLogin_Console2{
 
    $exp_text = "sign in"
    $CapturedImage = "Console2_hmescreen" 
    $IconImage = "Console2_hmepageicon"  
 #   $IconImage1 = "GameLaunchError"
    $Reg_lbl = "signIN_Top1"
    $Global:ElapsedTime = 59
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    $stopwatch = [system.diagnostics.stopwatch]::StartNew()
    $Status=$false
    
   while($true)
   {
       [string] $extract_txt=""
       $ret = Image_Capture -ImagePath $Global:CapturedImgPath
       if($ret)
       {
           $extract_txt = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $Reg_lbl 
      
           if($extract_txt -eq $exp_text)    
           {
               ConsoleTwo_CtrllerXbox
               Set_FixedDelay -DelayTime $Global:TwoSecs
               ConsoleTwo_CtrllerEnter  
               Set_FixedDelay -DelayTime $Global:FiveSecs        
               $stopwatch.Stop()
               $Global:ExecutionStatus = $true
            #   Verify_HmeScreen_Console2
               break;
           }
            
           else{              
                    $ret = Match_Pattern -Cap_Img $Global:CapturedImgPath -Icon_Img $Global:IconImgPath
                    if($ret.Data.MatchFound -eq $true)
                    {
                        $stopwatch.Stop()
                        $Global:ExecutionStatus = $true
                        break;
       
                    } 
                  
               } 
       } 
       if($stopwatch.Elapsed.Seconds -gt $Global:ElapsedTime)
       {
            Write-Host $stopwatch.Elapsed.Seconds
     #       Update_Report -TestId $testID -TestDescription $exp_text -Status $Failure
            $Global:ExecutionStatus = $false
            $stopwatch.Stop()           
            break;
       }
   }
   

}


Function Verify_HmeScreen_Console2
{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Console2_HmePage"
    $IconImage = "Console2_hmepageicon"
  
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    
    $ret = VerifyPatternMatch 
    if($ret -eq $true){
           $Global:ExecutionStatus = $true
    }
    else{
           $Global:ExecutionStatus = $false
      
    }
    }
}

Function AcceptFriendRequest{
    Validate_Request
    Select_Request
    Accept_Request  
}


Function Validate_Request{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "verify_frdrequest"  
    $IconImage = "Verify_Invi_req"
    $TestId = "TS02_TC3"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    
    ConsoleTwo_CtrllerLft
    ConsoleTwo_CtrllerLft
   
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




Function Select_Request{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "sele_frdrequest"
    $IconImage = "join_party"
 #   $TestId = "TS02_TC6"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage   
    
    ConsoleTwo_CtrllerDwn
    ConsoleTwo_CtrllerEnter
   
    $ret = VerifyPatternMatch 
    if($ret -eq $true){
   #       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
   #       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
   
  }
}

Function Accept_Request{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "accept_frdrequest"
    $IconImage = "Utopian_joinedparty"
    $TestId = "TS02_TC4"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    ConsoleTwo_CtrllerEnter
   
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


Function Enter_Chat{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Show_text_Chat"
    $IconImage = "Show_text_Chat_Icon"
 #   $TestId = "TS02_TC8"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    ConsoleTwo_CtrllerDwn
    ConsoleTwo_CtrllerDwn
    ConsoleTwo_CtrllerDwn
    ConsoleTwo_CtrllerDwn
    ConsoleTwo_CtrllerDwn

    $ret = VerifyPatternMatch 
    if($ret -eq $true){
  #        Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
   #       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
   
    }
}

Function Start_NewChat{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "New_Message"
    $IconImage = "New_Message_Icon"
    $TestId = "TS02_TC5"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    ConsoleTwo_CtrllerEnter
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

Function Open_Keypad($keycode){
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Keypad_Image"
    $IconImage = "Keypad_icon1"
 #   $TestId = "TS02_TC10"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    Press_Ctrller -Data $keycode

    $ret = VerifyPatternMatch 
    if($ret -eq $true){
  #        Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
   #       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
   
  }
}


Function Send_TextMsg($keycode){
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Type_Message" + $keycode
    $IconImage = "Type_Message_Icon"
 #   $TestId = "TS02_TC11"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    if($keycode -eq $two){
        Set_FixedDelay -DelayTime $Global:OneSec
        ConsoleTwo_CtrllerDwn
        ConsoleTwo_CtrllerEnter
        ConsoleTwo_CtrllerUp
        ConsoleTwo_CtrllerRht
        ConsoleTwo_CtrllerRht
        ConsoleTwo_CtrllerEnter

        ConsoleTwo_CtrllerMenu
        $TestId = "TS02_TC6"
        $ExtractRegionLabel = "msg_sent1"
        $ExpectedText = "Hi"
    }
    else{
        <#ConsoleOne_CtrllerDwn
        ConsoleOne_CtrllerDwn
        ConsoleOne_CtrllerLft
        ConsoleOne_CtrllerLft
        ConsoleOne_CtrllerLft
        ConsoleOne_CtrllerEnter

        ConsoleOne_CtrllerUp
        ConsoleOne_CtrllerUp
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerRht
        ConsoleOne_CtrllerEnter
        ConsoleOne_CtrllerEnter

        ConsoleOne_CtrllerDwn
        ConsoleOne_CtrllerEnter

        ConsoleOne_CtrllerMenu
        $TestId = "TS02_TC10"
        $ExtractRegionLabel = "msg_send2"
        $ExpectedText = "Cool"#>
      }

     Set_FixedDelay -DelayTime $Global:FiveSecs 
    Image_Capture -ImagePath $Global:CapturedImgPath
    $extract_txt = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label $Global:RegLabel -reg_label $ExtractRegionLabel
    $Global:ExtractedText = $extract_txt
 #   Write-Host $Global:ExtractedText -ForegroundColor Black
    $Global:ExecutionStatus = $true
    
  }
}


Function Verify_HmePage{
if($Global:ExecutionStatus -eq $true){
    $CapturedImage = "Console1_HmePage1"
    $IconImage = "Xbox_HmePageLogo"
  #  $TestId = "TS01_TC10"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    $ret = VerifyPatternMatch 
    if($ret -eq $true){
   #    Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
       $Global:ExecutionStatus = $true
    }
    else{
   #       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
          $Global:ExecutionStatus = $false
    }
}
   
}

Function Confirm_PartyChatting{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Multiplayer"
    $IconImage = "multiplayer_icon"
    $TestId = "TS02_TC6"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    ConsoleOne_CtrllerLft
    ConsoleOne_CtrllerLft

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


Function Validate_textmsg{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "select_Multiplayer"
    $IconImage = "msgcount"
    $TestId = "TS02_TC7"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    ConsoleOne_CtrllerEnter

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

Function Read_TextMsg{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "reply_msg"
    $IconImage = "Hi_reply"
    $TestId = "TS02_TC8"
    $ExtractRegionLabel = "msg_rcd1"
  #  $ExpectedText = "Hi buddy"
    $ExpectedText = $Global:ExtractedText
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerDwn

    ConsoleOne_CtrllerEnter

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

Function Read_repliedmsg{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "verify_msg"
    $IconImage = "Hi_reply2"
    $TestId = "TS02_TC11"
    $ExtractRegionLabel = "msg_rcd2"
  #  $ExpectedText = "Cool"
    $ExpectedText = $Global:ExtractedText
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

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

Function Scene2_PostRequi_Console2{
if( $Global:ExecutionStatus -eq $true){
    $CapturedImage = "Scenerio2_return"
    $IconImage = "multiplayer_icon"
 #   $TestId = "TS02_TC11"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    Set_FixedDelay -DelayTime $Global:OneSec
    ConsoleTwo_CtrllerExit
    ConsoleTwo_CtrllerDwn
    ConsoleTwo_CtrllerEnter
    
 #  Image_Capture -ImagePath $Global:CapturedImgPath   
    $ret = VerifyPatternMatch 
    if($ret -eq $true){
  #        Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
   #       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
   ConsoleTwo_CtrllerXbox
  }
}


Function Scene2_PostRequi_Console1{
if( $Global:ExecutionStatus -eq $true){
    
    $CapturedImage = "console1_return"
    $IconImage = "your_party"
 #   $TestId = "TS02_TC11"
    Set_FixedDelay -DelayTime $Global:OneSec
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    $ret = VerifyPatternMatch 
    if($ret -eq $true){
  #        Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
   #       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }

    $CapturedImage = "Scenerio1_return"
    $IconImage = "multiplayer_icon"
 #   $TestId = "TS02_TC11"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage

    ConsoleOne_CtrllerExit
    ConsoleOne_CtrllerDwn
    ConsoleOne_CtrllerEnter
    
    Image_Capture -ImagePath $Global:CapturedImgPath   
    $ret = VerifyPatternMatch 
    if($ret -eq $true){
  #        Update_Report -TestId $TestId -TestDescription $Global:PatternMatchSuccess -Status $Success
           $Global:ExecutionStatus = $true
    }
    else{
   #       Update_Report -TestId $TestId -TestDescription $Global:PatternMatchFailed -Status $Failure
           $Global:ExecutionStatus = $false
    }
   ConsoleOne_CtrllerXbox
  }
}


Function Console2_off
{
    
    Set_FixedDelay -DelayTime $Global:TwoSecs
    ConsoleTwo_CtrllerPwr
    ConsoleTwo_CtrllerUp
    ConsoleTwo_CtrllerEnter
}


Function Console2_SystemInfo{

    Initialize_RelayPorts
    $Global:ExecutionStatus = $true
    Switch_Console -Switch $Console_Two
   Set_FixedDelay -DelayTime $Global:FiveSecs
    Verify_HmeScreen_Console2
    Goto_XBoxOneGuide_Seq2 -relay_cmd $ctrller2_XBox
    GoTo_SystemInfoSettings_Console2
    Set_FixedDelay -DelayTime $Global:FiveSecs

}

Function Navigate2InitialPosition{
    
    ConsoleTwo_CtrllerLft
    ConsoleTwo_CtrllerLft
    Set_FixedDelay -DelayTime $Global:TwoSecs
    ConsoleTwo_CtrllerUp
    ConsoleTwo_CtrllerUp
    ConsoleTwo_CtrllerUp
    Set_FixedDelay -DelayTime $Global:TwoSecs
    ConsoleTwo_CtrllerUp
    ConsoleTwo_CtrllerUp
    ConsoleTwo_CtrllerUp
    Set_FixedDelay -DelayTime $Global:TwoSecs
}


Function GoTo_SystemInfoSettings_Console2{   

    $CapturedImage = "Console2_SystemInfo"
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $CapturedImage
    $TestId =  "33f33f.eg2452.feaqwg4.32456.02"

    ConsoleTwo_CtrllerRht
    ConsoleTwo_CtrllerRht
    ConsoleTwo_CtrllerRht
    Set_FixedDelay -DelayTime $Global:TwoSecs
    ConsoleTwo_CtrllerDwn
    Set_FixedDelay -DelayTime $Global:TwoSecs
    ConsoleTwo_CtrllerEnter
    Set_FixedDelay -DelayTime $Global:FiveSecs
    Navigate2InitialPosition

    ConsoleTwo_CtrllerDwn
    ConsoleTwo_CtrllerDwn
    ConsoleTwo_CtrllerDwn
    Set_FixedDelay -DelayTime $Global:TwoSecs
    ConsoleTwo_CtrllerRht
    Set_FixedDelay -DelayTime $Global:TwoSecs
    ConsoleTwo_CtrllerEnter    
    Set_FixedDelay -DelayTime $Global:FiveSecs

    Image_Capture -ImagePath $Global:CapturedImgPath 
    UpdateReport_SystemInfo -TestId $TestId -TestDescription "Xbox One Controller" -Status "NA"
    ConsoleTwo_CtrllerXbox
    Set_FixedDelay -DelayTime $Global:TwoSecs
    ConsoleTwo_CtrllerEnter    
    Set_FixedDelay -DelayTime $Global:TwoSecs
}




