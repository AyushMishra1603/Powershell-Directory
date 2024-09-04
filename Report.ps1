
taskkill /F /IM "WINWORD.exe"

cls
$ExecutingDir = split-path $SCRIPT:MyInvocation.MyCommand.Path -parent

$TemplateFile = "$ExecutingDir\..\..\Report\TextX_Template_Report.docx"
Function datetime(){
            $Global:date = Get-Date -Format "ddMMMyy_hh_mm_ss"
            $Global:FinalFile = "$ExecutingDir\..\..\Report\TestX_Tier0_OS_Compat" + $date + ".docx"
            Start-Sleep 2
            $Global:tpDateTime = Get-Date -Format 'F'
           
}

Function OpenWordDoc($Filename){

$script:Word=NEW-Object –comobject Word.Application
Return $Word.documents.open($Filename)
}


Function SaveAsWordDoc($Document, $FileName){

$Document.Saveas([REF]$Filename)
$Document.close()
}

Function ReplaceTag($Document, $FindText, $ReplaceWithText){

$FindReplace=$Document.ActiveWindow.Selection.Find
$matchCase = $false;
$matchWholeWord = $true;
$matchWildCards = $false;
$matchSoundsLike = $false;
$matchAllWordForms = $false;
$forward = $true;
$format = $false;
$matchKashida = $false;
$matchDiacritics = $false;
$matchAlefHamza = $false;
$matchControl = $false;
$read_only = $false;
$visible = $true;
$replace = 2;
$wrap = 1;

$FindReplace.Execute($findText, $matchCase, $matchWholeWord, $matchWildCards, $matchSoundsLike, $matchAllWordForms, $forward, $wrap, $format, $replaceWithText, $replace, $matchKashida ,$matchDiacritics, $matchAlefHamza, $matchControl) | Out-Null
}

Function AddImage($Document, $BookmarkName, $ReplaceWithImage){

$replacewithImage = [System.IO.Path]::Combine( $IconImageFolder ,$ReplaceWithImage +".bmp" )

$FindReplace=$Document.ActiveWindow
$FindReplace.Selection.GoTo(-1,0,0,$Document.Bookmarks.item(“$BookmarkName”))
$FindReplace.Selection.InlineShapes.AddPicture(“$replacewithImage”)

}


# Open template file
$Doc = OpenWordDoc -Filename $TemplateFile

#$GetText = $Doc.Tables(1).Cell(2,2).Range.Text
#Write-Host $GetText
<#
# Replace text tags
ReplaceTag –Document $Doc -FindText '<Rocket_League_Status>' -replacewithtext "Pass"
ReplaceTag –Document $Doc -FindText '<BatMan_Status>' -replacewithtext "Pass"
ReplaceTag –Document $Doc -FindText '<CrackDown_Status>' -replacewithtext "Pass"
ReplaceTag –Document $Doc -FindText '<New_Game_Status>' -replacewithtext "Fail"

#>
# Add image

<#

AddImage –Document $Doc -BookmarkName 'CrackDown_logo' -ReplaceWithImage "D:\Reports\crackdwn_inhmescreen.bmp"
AddImage –Document $Doc -BookmarkName 'Batman_HomeScreen_logo' -ReplaceWithImage "D:\Reports\Batman_HomeScreen.bmp"

#>

# Save FInal Report
#SaveAsWordDoc –document $Doc –Filename $FinalFile 
#$Word.Quit()

Function FetchSysInfo(){

$Global:ElapsedTime = 10
ConsoleOne_CtrllerXbox
$ret0 = Pattern_Verification -CapturedImage "Xbox_Hme_Logo" -IconImage "Xbox_Hme_Logo2"
if($ret0 -eq $true)
{

Launch_CheckSysInfoForReport


Image_Capture -ImagePath $Global:CapturedImgPath   
$extract_os = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label "label1" -reg_label "osversion"


#Image_Capture -ImagePath $Global:CapturedImgPath   
$extract_serial = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label "label1" -reg_label "serial"


#Image_Capture -ImagePath $Global:CapturedImgPath   
$extract_console = ExtractTessaractSingle -img_path $Global:CapturedImgPath -label "label1" -reg_label "consoleid"

[hashtable]$return = @{}

$return.consoleId = $extract_console
$return.serialNo = $extract_serial
$return.buildNo = $extract_os

Quit_LaunchedGame_Relay -console $Global:Once

return $return

}

}


Function Launch_CheckSysInfoForReport{


ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerRht
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
Start-Sleep -Seconds 3
ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerDwn
#ConsoleOne_CtrllerDwn
ConsoleOne_CtrllerEnter
ConsoleOne_CtrllerEnter
  
    return $true
}

Function ChangeCellColor($Document, $RowNo, $Outcome, $temptop){

$i=4
$j = 0
for($i=4; $i -le 1600; $i++){
    
    #$content = $Document.Tables(1).Rows($i).Cells(2)
    $content = $Document.Tables(1).Cell($i,2).Range.Text
    if($content -match $temptop){
        $j = $i
        $i = 1700
    }
    else{
        
    }
}


 
$table = $Document.Tables(1) 
$cellToChange = $Document.Tables(1).Rows($j).Cells(2)

#$cellToChange = $temp
if($Outcome -eq "Pass"){
    $cellToChange.Shading.BackgroundPatternColor = 32768 #wdColorGreen
    }
    elseif($Outcome -eq "Fail"){
 
    $cellToChange.Shading.BackgroundPatternColor = 255 #wdColorRed
    }
    elseif($Outcome -eq "Warning"){
 
    $cellToChange.Shading.BackgroundPatternColor = 10092543 #wdColorLightYellow
    }
} 