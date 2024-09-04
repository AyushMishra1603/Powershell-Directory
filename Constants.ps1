$Global:CapturedImgPath  = $null
$Global:IconImgPath      = $null
$Global:ExtractedText    = $null
$ImageDevice             = "Camera3"
$OCRLabel                = "DefaultOCR1"
$SerialLabel1             = "PortLabel2" 
$SerialLabel2             = "PortLabel3"
$ReportLabel             = "Label1"
$VideoDevice             = "Camera5" 
$VideoCmprDevice         = "Camera1"
$Global:RegLabel         = "label1"
$Global:execution_flag = 0
$Global:ElapsedTime    = 30
$Global:OneSec         = 1
$Global:TwoSecs        = 2
$Global:FiveSecs       = 5
$Global:EightSecs      = 8
$Global:FifteenSecs    = 15
$Global:Hundredms      = 100
$Global:Once           = 1
$Global:Twice          = 2
$Global:Thrice         = 3
$Global:Fource         = 4
$Global:Five           = 5
$Global:Sixteen        = 16
$Global:Thirteen       = 13
$Global:Tence          = 10

$EnergySavings    =  1
$InstantOn        =  2
$Full_shutdown    =  1
$Restart_Now      =  2

$audiodev = "AVerMedia Ain (DarkCrystal 750)"
$videodev  = "AVerMedia U3 Video Capture"

$Global:PatternMatchSuccess = "Image Pattern Matched"
$Global:PatternMatchFailed  = "Image Pattern not Matched"
$Success = "PASS"
$Failure = "FAIL"

$PortOne = 0x43
$PortTwo = 0x46
$PortThree = 0x4A

$InitPortOne = [Byte[]](0x42,$zero)
$InitPortTwo = [Byte[]](0x45,$zero)
$InitPortThree = [Byte[]](0x48,$zero)
$zero = 0
$one = 0x01
$two = 0x02
$three = 0x04
$four = 0x08
$five = 0x10
$six = 0x20
$seven = 0x40
$eight = 0x80

$ctrller2_A = [Byte[]]($PortTwo,$six)
$ctrller2_B = [Byte[]]($PortTwo,$five)
$ctrller2_X = [Byte[]]($PortTwo,$seven)
$ctrller2_Y = [Byte[]]($PortTwo,$eight)
 
$ctrller1_A = [Byte[]]($PortOne,$two)
$ctrller1_B = [Byte[]]($PortOne,$one)
$ctrller1_X = [Byte[]]($PortOne,$three)
$ctrller1_Y = [Byte[]]($PortOne,$four) 

$ctrller2_XBox = [Byte[]]($PortThree,$seven)
$ctrller2_Rt   = [Byte[]]($PortThree,$three)
$ctrller2_Lt   = [Byte[]]($PortThree,$five)
$ctrller2_Up   = [Byte[]]($PortThree,$six)
$ctrller2_Dwn  = [Byte[]]($PortThree,$four)
$ctrller2_Menu = [Byte[]]($PortThree,$one)
$ctrller2_View = [Byte[]]($PortThree,$two)

$ctrller1_XBox = [Byte[]]($PortTwo,$three)
$ctrller1_Dwn  = [Byte[]]($PortOne,$eight)
$ctrller1_Lt   = [Byte[]]($PortTwo,$one)
$ctrller1_Up   = [Byte[]]($PortTwo,$two)
$ctrller1_Rt   = [Byte[]]($PortOne,$seven)
$ctrller1_Menu = [Byte[]]($PortOne,$five)
$ctrller1_View = [Byte[]]($PortOne,$six)

$ctrller1_LB = [Byte[]]($PortTwo,$four)
$ctrller1_RB = [Byte[]]($PortTwo,$five)

$VideoDeviceID  =  "AVerMedia U3 Video Capture"
$AudioDeviceID  =  "AVerMedia Ain (2- AVerMedia DarkCrystal 750)"
$Vid_Framerate  =  "30"
$Vid_Format     =  "1920x1080 YUY2, 16 bit"
$Aud_Format     =  "PCM, 44100 Hz, 16 Bits, 2 Channels"
$Vid_Type       =  "MP4"

$JoyStick1_LR = [byte]03
$JoyStick1_UD = [byte]02
$JoyStick2_LR = [byte]01
$JoyStick2_UD = [byte]00
$Left_Thumb   = [byte]04
$Right_Thumb  = [byte]05
$Joystick_Down   = 1.6
$Joystick_UP     = 0.02
$Joystick_Right  = 1.6
$Joystick_Left   = 0.02