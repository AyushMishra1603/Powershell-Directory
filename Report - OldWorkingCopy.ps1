Function OpenWordDoc($Filename)
{
$script:Word=NEW-Object –comobject Word.Application
Return $Word.documents.open($Filename)
}


Function SaveAsWordDoc($Document, $FileName)
{
$Document.Saveas([REF]$Filename)
$Document.close()
}

Function ReplaceTag($Document, $FindText, $ReplaceWithText)
{
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

Function AddImage($Document, $BookmarkName, $ReplaceWithImage)
{
$FindReplace=$Document.ActiveWindow
$FindReplace.Selection.GoTo(-1,0,0,$Document.Bookmarks.item(“$BookmarkName”))
$FindReplace.Selection.InlineShapes.AddPicture(“$replacewithImage”)

}

$TemplateFile = "D:\Reports\Template_Report.docx"
$FinalFile = "D:\Reports\FinalReport.docx"

# Open template file
$Doc=OpenWordDoc -Filename $TemplateFile

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

