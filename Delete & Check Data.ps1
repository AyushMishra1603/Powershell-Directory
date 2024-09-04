Function DeleteGameData_Usingsearch($game_name){
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
            
            ConsoleOne_CtrllerDwn
            ConsoleOne_CtrllerEnter
            Start-Sleep -Seconds 2
            ConsoleOne_CtrllerLft
            ConsoleOne_CtrllerLft 
            ConsoleOne_CtrllerEnter
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
         
         ConsoleOne_CtrllerDwn
         ConsoleOne_CtrllerEnter
         Start-Sleep -Seconds 2
         ConsoleOne_CtrllerLft
         ConsoleOne_CtrllerLft 
         ConsoleOne_CtrllerEnter
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