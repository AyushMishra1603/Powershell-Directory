$ExecutingDir            =  split-path $SCRIPT:MyInvocation.MyCommand.Path -parent
#Write-Host $ExecutingDir
$AssemblyDir             = "Executables"
$AssemblyDir         = "$ExecutingDir\..\..\$AssemblyDir"


#------------------------------ Game Specific Scripts ----------------------------------------#

$commonfnScript  =  "CommonFunctions.ps1"
$Scene2Script    =  "XBoxConsoleRelay.ps1"
$constants       =  "Constants.ps1"
$XboxGamePlay    =  "Xbox_GamePlay.ps1"
$USerFunction_ConsoleUpdate = "ConsoleUpdate.ps1"
$commonReportScript = "Report.ps1"

$UserFunction_DukeNukem3D  = "DukeNukem3D.ps1"
$UserFunction_DukeNukem3D_DataSync  = "DukeNukem3D_DataSync.ps1"
$UserFunction_DukeNukem3D_SwitchToDifferentGame = "DukeNukem3D_SwitchToDifferentGame.ps1"
$UserFunction_DukeNukem3D_SwitchToDifferentApp = "DukeNukem3D_SwitchToDifferentApp.ps1"
$UserFunction_DukeNukem3D_RestoreFromCS = "DukeNukem3D_RestoreFromCS.ps1"

$UserFunction_DungeonAndGravestone  = "DungeonAndGravestone.ps1"
$UserFunction_DungeonAndGravestone_DataSync  = "DungeonAndGravestone_DataSync.ps1"
$UserFunction_DungeonAndGravestone_SwitchToDifferentGame = "DungeonAndGravestone_SwitchToDifferentGame.ps1"
$UserFunction_DungeonAndGravestone_SwitchToDifferentApp = "DungeonAndGravestone_SwitchToDifferentApp.ps1"
$UserFunction_DungeonAndGravestone_RestoreFromCS = "DungeonAndGravestone_RestoreFromCS.ps1"

$UserFunction_DungeonPunks  = "DungeonPunks.ps1"
$UserFunction_DungeonPunks_DataSync  = "DungeonPunks_DataSync.ps1"
$UserFunction_DungeonPunks_SwitchToDifferentGame = "DungeonPunks_SwitchToDifferentGame.ps1"
$UserFunction_DungeonPunks_SwitchToDifferentApp = "DungeonPunks_SwitchToDifferentApp.ps1"
$UserFunction_DungeonPunks_RestoreFromCS = "DungeonPunks_RestoreFromCS.ps1"

$UserFunction_DyingReborn  = "DyingReborn.ps1"
$UserFunction_DyingReborn_DataSync  = "DyingReborn_DataSync.ps1"
$UserFunction_DyingReborn_SwitchToDifferentGame = "DyingReborn_SwitchToDifferentGame.ps1"
$UserFunction_DyingReborn_SwitchToDifferentApp = "DyingReborn_SwitchToDifferentApp.ps1"
$UserFunction_DyingReborn_RestoreFromCS = "DyingReborn_RestoreFromCS.ps1"

$UserFunction_DynastyWarriors8Empires = "DynastyWarriors8Empires.ps1"
$UserFunction_DynastyWarriors8Empires_DataSync  = "DynastyWarriors8Empires_DataSync.ps1"
$UserFunction_DynastyWarriors8Empires_SwitchToDifferentGame = "DynastyWarriors8Empires_SwitchToDifferentGame.ps1"
$UserFunction_DynastyWarriors8Empires_SwitchToDifferentApp = "DynastyWarriors8Empires_SwitchToDifferentApp.ps1"
$UserFunction_DynastyWarriors8Empires_RestoreFromCS = "DynastyWarriors8Empires_RestoreFromCS.ps1" 
$UserFunction_FIFA16  = "FIFA16.ps1"
$UserFunction_FIFA16_DataSync  = "FIFA16_DataSync.ps1"
$UserFunction_FIFA16_SwitchToDifferentGame  = "FIFA16_SwitchToDifferentGame.ps1"
$UserFunction_FIFA16_SwitchToDifferentApp  = "FIFA16_SwitchToDifferentApp.ps1"
$UserFunction_FIFA16_RestoreFromCS = "FIFA16_RestoreFromCS.ps1"
$UserFunction_NBALive15  =  "NBALive15.ps1"
$UserFunction_NBALive15_DataSync  =  "NBALive15_DataSync.ps1"
$UserFunction_NBALive15_SwitchToDifferentGame  =  "NBALive15_SwitchToDifferentGame.ps1"
$UserFunction_NBALive15_SwitchToDifferentApp   =  "NBALive15_SwitchToDifferentApp.ps1"
$UserFunction_NBALive15_RestoreFromCS =  "NBALive15_RestoreFromCS.ps1" 
$UserFunction_NBALive16  =  "NBALive16.ps1"
$UserFunction_NBALive16_DataSync  =  "NBALive16_DataSync.ps1"
$UserFunction_NBALive16_SwitchToDifferentGame  =  "NBALive16_SwitchToDifferentGame.ps1"
$UserFunction_NBALive16_SwitchToDifferentApp   =  "NBALive16_SwitchToDifferentApp.ps1"
$UserFunction_NBALive16_RestoreFromCS =  "NBALive16_RestoreFromCS.ps1" 
$UserFunction_NHL19  =  "NHL19.ps1"
$UserFunction_NHL19_DataSync  =  "NHL19_DataSync.ps1"
$UserFunction_NHL19_SwitchToDifferentGame  =  "NHL19_SwitchToDifferentGame.ps1"
$UserFunction_NHL19_SwitchToDifferentApp   =  "NHL19_SwitchToDifferentApp.ps1"
$UserFunction_NHL19_RestoreFromCS =  "NHL19_RestoreFromCS.ps1" 
$UserFunction_EmilyWantsToPlay  =  "EmilyWantsToPlay.ps1"
$UserFunction_EmilyWantsToPlay_DataSync  =  "EmilyWantsToPlay_DataSync.ps1"
$UserFunction_EmilyWantsToPlay_SwitchToDifferentGame  =  "EmilyWantsToPlay_SwitchToDifferentGame.ps1"
$UserFunction_EmilyWantsToPlay_SwitchToDifferentApp   =  "EmilyWantsToPlay_SwitchToDifferentApp.ps1"
$UserFunction_EmilyWantsToPlay_RestoreFromCS =  "EmilyWantsToPlay_RestoreFromCS.ps1" 
$UserFunction_EventideSlavicFable  = "EventideSlavicFable.ps1"
$UserFunction_EventideSlavicFable_DataSync  = "EventideSlavicFable_DataSync.ps1"
$UserFunction_EventideSlavicFable_MP_GP  = "EventideSlavicFable_MP_GP.ps1"
$UserFunction_EventideSlavicFable_SwitchToDifferentGame = "EventideSlavicFable_SwitchToDifferentGame.ps1"
$UserFunction_EventideSlavicFable_SwitchToDifferentApp = "EventideSlavicFable_SwitchToDifferentApp.ps1"
$UserFunction_EventideSlavicFable_RestoreFromCS = "EventideSlavicFable_RestoreFromCS.ps1" 
$UserFunction_F12017  = "F12017.ps1"
$UserFunction_F12017_DataSync  = "F12017_DataSync.ps1"
$UserFunction_F12017_SwitchToDifferentGame  = "F12017_SwitchToDifferentGame.ps1"
$UserFunction_F12017_SwitchToDifferentApp  = "F12017_SwitchToDifferentApp.ps1"
$UserFunction_F12017_RestoreFromCS = "F12017_RestoreFromCS.ps1"
$UserFunction_F12018  =  "F12018.ps1"
$UserFunction_F12018_DataSync  =  "F12018_DataSync.ps1"
$UserFunction_F12018_SwitchToDifferentGame  =  "F12018_SwitchToDifferentGame.ps1"
$UserFunction_F12018_SwitchToDifferentApp   =  "F12018_SwitchToDifferentApp.ps1"
$UserFunction_F12018_RestoreFromCS =  "F12018_RestoreFromCS.ps1" 
$UserFunction_F12015  =  "F12015.ps1"
$UserFunction_F12015_DataSync  =  "F12015_DataSync.ps1"
$UserFunction_F12015_SwitchToDifferentGame  =  "F12015_SwitchToDifferentGame.ps1"
$UserFunction_F12015_SwitchToDifferentApp   =  "F12015_SwitchToDifferentApp.ps1"
$UserFunction_F12015_RestoreFromCS =  "F12015_RestoreFromCS.ps1" 
$UserFunction_FarCry3  =  "FarCry3.ps1"
$UserFunction_FarCry3_DataSync  =  "FarCry3_DataSync.ps1"
$UserFunction_FarCry3_SwitchToDifferentGame  =  "FarCry3_SwitchToDifferentGame.ps1"
$UserFunction_FarCry3_SwitchToDifferentApp   =  "FarCry3_SwitchToDifferentApp.ps1"
$UserFunction_FarCry3_RestoreFromCS =  "FarCry3_RestoreFromCS.ps1" 
$UserFunction_FarmForYourLife  =  "FarmForYourLife.ps1"
$UserFunction_FarmForYourLife_DataSync  =  "FarmForYourLife_DataSync.ps1"
$UserFunction_FarmForYourLife_SwitchToDifferentGame  =  "FarmForYourLife_SwitchToDifferentGame.ps1"
$UserFunction_FarmForYourLife_SwitchToDifferentApp   =  "FarmForYourLife_SwitchToDifferentApp.ps1"
$UserFunction_FarmForYourLife_RestoreFromCS   =  "FarmForYourLife_RestoreFromCS.ps1"
$UserFunction_FarmingSimulator17  = "FarmingSimulator17.ps1"
$UserFunction_FarmingSimulator17_DataSync  = "FarmingSimulator17_DataSync.ps1"
$UserFunction_FarmingSimulator17_MP_GP  = "FarmingSimulator17_MP_GP.ps1"
$UserFunction_FarmingSimulator17_SwitchToDifferentGame = "FarmingSimulator17_SwitchToDifferentGame.ps1"
$UserFunction_FarmingSimulator17_SwitchToDifferentApp = "FarmingSimulator17_SwitchToDifferentApp.ps1"
$UserFunction_FarmingSimulator17_RestoreFromCS = "FarmingSimulator17_RestoreFromCS.ps1" 
$UserFunction_ForzaHorizon2  = "ForzaHorizon2.ps1"
$UserFunction_ForzaHorizon2_DataSync  = "ForzaHorizon2_DataSync.ps1"
$UserFunction_ForzaHorizon2_SwitchToDifferentGame  = "ForzaHorizon2_SwitchToDifferentGame.ps1"
$UserFunction_ForzaHorizon2_SwitchToDifferentApp  = "ForzaHorizon2_SwitchToDifferentApp.ps1"
$UserFunction_ForzaHorizon2_RestoreFromCS = "ForzaHorizon2_RestoreFromCS.ps1"
$UserFunction_ForzaMotorsport5  =  "ForzaMotorsport5.ps1"
$UserFunction_ForzaMotorsport5_DataSync  =  "ForzaMotorsport5_DataSync.ps1"
$UserFunction_ForzaMotorsport5_SwitchToDifferentGame  =  "ForzaMotorsport5_SwitchToDifferentGame.ps1"
$UserFunction_ForzaMotorsport5_SwitchToDifferentApp   =  "ForzaMotorsport5_SwitchToDifferentApp.ps1"
$UserFunction_ForzaMotorsport5_RestoreFromCS =  "ForzaMotorsport5_RestoreFromCS.ps1" 
$UserFunction_FunTownMahjong  =  "FunTownMahjong.ps1"
$UserFunction_FunTownMahjong_DataSync  =  "FunTownMahjong_DataSync.ps1"
$UserFunction_FunTownMahjong_SwitchToDifferentGame  =  "FunTownMahjong_SwitchToDifferentGame.ps1"
$UserFunction_FunTownMahjong_SwitchToDifferentApp   =  "FunTownMahjong_SwitchToDifferentApp.ps1"
$UserFunction_FunTownMahjong_RestoreFromCS =  "FunTownMahjong_RestoreFromCS.ps1" 
$UserFunction_GPrimeIntoTheRain  =  "GPrimeIntoTheRain.ps1"
$UserFunction_GPrimeIntoTheRain_DataSync  =  "GPrimeIntoTheRain_DataSync.ps1"
$UserFunction_GPrimeIntoTheRain_SwitchToDifferentGame  =  "GPrimeIntoTheRain_SwitchToDifferentGame.ps1"
$UserFunction_GPrimeIntoTheRain_SwitchToDifferentApp   =  "GPrimeIntoTheRain_SwitchToDifferentApp.ps1"
$UserFunction_GPrimeIntoTheRain_RestoreFromCS =  "GPrimeIntoTheRain_RestoreFromCS.ps1" 
$UserFunction_GameOfThronesE1  =  "GameOfThronesE1.ps1"
$UserFunction_GameOfThronesE1_DataSync  =  "GameOfThronesE1_DataSync.ps1"
$UserFunction_GameOfThronesE1_SwitchToDifferentGame  =  "GameOfThronesE1_SwitchToDifferentGame.ps1"
$UserFunction_GameOfThronesE1_SwitchToDifferentApp   =  "GameOfThronesE1_SwitchToDifferentApp.ps1"
$UserFunction_GameOfThronesE1_RestoreFromCS = "GameOfThronesE1_RestoreFromCS.ps1" 
$UserFunction_GearsOfWar  = "GearsOfWar.ps1"
$UserFunction_GearsOfWar_DataSync  = "GearsOfWar_DataSync.ps1"
$UserFunction_GearsOfWar_MP_GP  = "GearsOfWar_MP_GP.ps1"
$UserFunction_GearsOfWar_SwitchToDifferentGame = "GearsOfWar_SwitchToDifferentGame.ps1"
$UserFunction_GearsOfWar_SwitchToDifferentApp = "GearsOfWar_SwitchToDifferentApp.ps1"
$UserFunction_GearsOfWar_RestoreFromCS = "GearsOfWar_RestoreFromCS.ps1" 
$UserFunction_GenesisAlphaOne  = "GenesisAlphaOne.ps1"
$UserFunction_GenesisAlphaOne_DataSync  = "GenesisAlphaOne_DataSync.ps1"
$UserFunction_GenesisAlphaOne_SwitchToDifferentGame  = "GenesisAlphaOne_SwitchToDifferentGame.ps1"
$UserFunction_GenesisAlphaOne_SwitchToDifferentApp  = "GenesisAlphaOne_SwitchToDifferentApp.ps1"
$UserFunction_GenesisAlphaOne_RestoreFromCS = "GenesisAlphaOne_RestoreFromCS.ps1"
$UserFunction_GeometryWars3  =  "GeometryWars3.ps1"
$UserFunction_GeometryWars3_DataSync  =  "GeometryWars3_DataSync.ps1"
$UserFunction_GeometryWars3_SwitchToDifferentGame  =  "GeometryWars3_SwitchToDifferentGame.ps1"
$UserFunction_GeometryWars3_SwitchToDifferentApp   =  "GeometryWars3_SwitchToDifferentApp.ps1"
$UserFunction_GeometryWars3_RestoreFromCS =  "GeometryWars3_RestoreFromCS.ps1" 
#-------------------------------------------------------------------------------------------------------------------
$commonfnScript  =  [System.IO.Path]::Combine( $ExecutingDir, $commonfnScript )
$constantsScript =  [System.IO.Path]::Combine( $ExecutingDir, $constants )
$Scene2Script        =  [System.IO.Path]::Combine( $ExecutingDir, $Scene2Script )
$UserFunctionsScript_GOW =  [System.IO.Path]::Combine( $ExecutingDir, $UserFunctions_GOW )
$XboxGamePlay   =  [System.IO.Path]::Combine( $ExecutingDir, $XboxGamePlay )
$UserFunction_ConsoleUpdate =  [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ConsoleUpdate )
$commonReportScript = [System.IO.Path]::Combine( $ExecutingDir, $commonReportScript )

$UserFunction_DukeNukem3D = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DukeNukem3D )
$UserFunction_DukeNukem3D_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DukeNukem3D_DataSync )
$UserFunction_DukeNukem3D_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DukeNukem3D_SwitchToDifferentGame )
$UserFunction_DukeNukem3D_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DukeNukem3D_SwitchToDifferentApp  )
$UserFunction_DukeNukem3D_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DukeNukem3D_RestoreFromCS )

$UserFunction_DungeonAndGravestone = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DungeonAndGravestone )
$UserFunction_DungeonAndGravestone_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DungeonAndGravestone_DataSync )
$UserFunction_DungeonAndGravestone_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DungeonAndGravestone_SwitchToDifferentGame )
$UserFunction_DungeonAndGravestone_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DungeonAndGravestone_SwitchToDifferentApp  )
$UserFunction_DungeonAndGravestone_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DungeonAndGravestone_RestoreFromCS )


$UserFunction_DungeonPunks = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DungeonPunks )
$UserFunction_DungeonPunks_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DungeonPunks_DataSync )
$UserFunction_DungeonPunks_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DungeonPunks_SwitchToDifferentGame )
$UserFunction_DungeonPunks_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DungeonPunks_SwitchToDifferentApp  )
$UserFunction_DungeonPunks_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DungeonPunks_RestoreFromCS )

$UserFunction_DyingReborn = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DyingReborn )
$UserFunction_DyingReborn_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DyingReborn_DataSync )
$UserFunction_DyingReborn_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DyingReborn_SwitchToDifferentGame )
$UserFunction_DyingReborn_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DyingReborn_SwitchToDifferentApp  )
$UserFunction_DyingReborn_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DyingReborn_RestoreFromCS )

$UserFunction_DynastyWarriors8Empires = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DynastyWarriors8Empires )
$UserFunction_DynastyWarriors8Empires_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DynastyWarriors8Empires_DataSync )
$UserFunction_DynastyWarriors8Empires_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DynastyWarriors8Empires_SwitchToDifferentGame )
$UserFunction_DynastyWarriors8Empires_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DynastyWarriors8Empires_SwitchToDifferentApp  )
$UserFunction_DynastyWarriors8Empires_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_DynastyWarriors8Empires_RestoreFromCS ) 
$UserFunction_FIFA16 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FIFA16 )
$UserFunction_FIFA16_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FIFA16_DataSync )
$UserFunction_FIFA16_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FIFA16_SwitchToDifferentGame )
$UserFunction_FIFA16_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FIFA16_SwitchToDifferentApp  )
$UserFunction_FIFA16_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FIFA16_RestoreFromCS ) 
$UserFunction_NBALive15 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NBALive15 )
$UserFunction_NBALive15_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NBALive15_DataSync )
$UserFunction_NBALive15_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NBALive15_SwitchToDifferentGame )
$UserFunction_NBALive15_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NBALive15_SwitchToDifferentApp  )
$UserFunction_NBALive15_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NBALive15_RestoreFromCS )
$UserFunction_NBALive16 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NBALive16 )
$UserFunction_NBALive16_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NBALive16_DataSync )
$UserFunction_NBALive16_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NBALive16_SwitchToDifferentGame )
$UserFunction_NBALive16_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NBALive16_SwitchToDifferentApp  )
$UserFunction_NBALive16_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NBALive16_RestoreFromCS ) 
$UserFunction_NHL19 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NHL19 )
$UserFunction_NHL19_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NHL19_DataSync )
$UserFunction_NHL19_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NHL19_SwitchToDifferentGame )
$UserFunction_NHL19_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NHL19_SwitchToDifferentApp  )
$UserFunction_NHL19_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_NHL19_RestoreFromCS )
$UserFunction_EmilyWantsToPlay = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EmilyWantsToPlay )
$UserFunction_EmilyWantsToPlay_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EmilyWantsToPlay_DataSync )
$UserFunction_EmilyWantsToPlay_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EmilyWantsToPlay_SwitchToDifferentGame )
$UserFunction_EmilyWantsToPlay_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EmilyWantsToPlay_SwitchToDifferentApp  )
$UserFunction_EmilyWantsToPlay_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EmilyWantsToPlay_RestoreFromCS )
$UserFunction_EventideSlavicFable = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EventideSlavicFable )
$UserFunction_EventideSlavicFable_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EventideSlavicFable_DataSync )
$UserFunction_EventideSlavicFable_MP_GP = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EventideSlavicFable_MP_GP )
$UserFunction_EventideSlavicFable_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EventideSlavicFable_SwitchToDifferentGame )
$UserFunction_EventideSlavicFable_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EventideSlavicFable_SwitchToDifferentApp  )
$UserFunction_EventideSlavicFable_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_EventideSlavicFable_RestoreFromCS ) 
$UserFunction_F12017 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12017 )
$UserFunction_F12017_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12017_DataSync )
$UserFunction_F12017_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12017_SwitchToDifferentGame )
$UserFunction_F12017_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12017_SwitchToDifferentApp  )
$UserFunction_F12017_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12017_RestoreFromCS ) 
$UserFunction_F12018 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12018 )
$UserFunction_F12018_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12018_DataSync )
$UserFunction_F12018_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12018_SwitchToDifferentGame )
$UserFunction_F12018_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12018_SwitchToDifferentApp  )
$UserFunction_F12018_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12018_RestoreFromCS )
$UserFunction_F12015 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12015 )
$UserFunction_F12015_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12015_DataSync )
$UserFunction_F12015_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12015_SwitchToDifferentGame )
$UserFunction_F12015_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12015_SwitchToDifferentApp  )
$UserFunction_F12015_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_F12015_RestoreFromCS ) 
$UserFunction_FarCry3 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarCry3 )
$UserFunction_FarCry3_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarCry3_DataSync )
$UserFunction_FarCry3_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarCry3_SwitchToDifferentGame )
$UserFunction_FarCry3_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarCry3_SwitchToDifferentApp  )
$UserFunction_FarCry3_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarCry3_RestoreFromCS )  
$UserFunction_FarmForYourLife = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmForYourLife )
$UserFunction_FarmForYourLife_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmForYourLife_DataSync )
$UserFunction_FarmForYourLife_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmForYourLife_SwitchToDifferentGame )
$UserFunction_FarmForYourLife_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmForYourLife_SwitchToDifferentApp  )
$UserFunction_FarmForYourLife_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmForYourLife_RestoreFromCS )  
$UserFunction_FarmingSimulator17 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmingSimulator17 )
$UserFunction_FarmingSimulator17_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmingSimulator17_DataSync )
$UserFunction_FarmingSimulator17_MP_GP = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmingSimulator17_MP_GP )
$UserFunction_FarmingSimulator17_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmingSimulator17_SwitchToDifferentGame )
$UserFunction_FarmingSimulator17_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmingSimulator17_SwitchToDifferentApp  )
$UserFunction_FarmingSimulator17_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FarmingSimulator17_RestoreFromCS ) 
$UserFunction_ForzaHorizon2 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ForzaHorizon2 )
$UserFunction_ForzaHorizon2_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ForzaHorizon2_DataSync )
$UserFunction_ForzaHorizon2_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ForzaHorizon2_SwitchToDifferentGame )
$UserFunction_ForzaHorizon2_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ForzaHorizon2_SwitchToDifferentApp  )
$UserFunction_ForzaHorizon2_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ForzaHorizon2_RestoreFromCS ) 
$UserFunction_ForzaMotorsport5 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ForzaMotorsport5 )
$UserFunction_ForzaMotorsport5_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ForzaMotorsport5_DataSync )
$UserFunction_ForzaMotorsport5_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ForzaMotorsport5_SwitchToDifferentGame )
$UserFunction_ForzaMotorsport5_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ForzaMotorsport5_SwitchToDifferentApp  )
$UserFunction_ForzaMotorsport5_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_ForzaMotorsport5_RestoreFromCS )
$UserFunction_FunTownMahjong = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FunTownMahjong )
$UserFunction_FunTownMahjong_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FunTownMahjong_DataSync )
$UserFunction_FunTownMahjong_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FunTownMahjong_SwitchToDifferentGame )
$UserFunction_FunTownMahjong_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FunTownMahjong_SwitchToDifferentApp  )
$UserFunction_FunTownMahjong_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_FunTownMahjong_RestoreFromCS ) 
$UserFunction_GPrimeIntoTheRain = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GPrimeIntoTheRain )
$UserFunction_GPrimeIntoTheRain_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GPrimeIntoTheRain_DataSync )
$UserFunction_GPrimeIntoTheRain_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GPrimeIntoTheRain_SwitchToDifferentGame )
$UserFunction_GPrimeIntoTheRain_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GPrimeIntoTheRain_SwitchToDifferentApp  )
$UserFunction_GPrimeIntoTheRain_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GPrimeIntoTheRain_RestoreFromCS ) 
$UserFunction_GearsOfWar = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GearsOfWar )
$UserFunction_GearsOfWar_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GearsOfWar_DataSync )
$UserFunction_GearsOfWar_MP_GP = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GearsOfWar_MP_GP )
$UserFunction_GearsOfWar_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GearsOfWar_SwitchToDifferentGame )
$UserFunction_GearsOfWar_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GearsOfWar_SwitchToDifferentApp  )
$UserFunction_GearsOfWar_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GearsOfWar_RestoreFromCS ) 
$UserFunction_GenesisAlphaOne = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GenesisAlphaOne )
$UserFunction_GenesisAlphaOne_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GenesisAlphaOne_DataSync )
$UserFunction_GenesisAlphaOne_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GenesisAlphaOne_SwitchToDifferentGame )
$UserFunction_GenesisAlphaOne_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GenesisAlphaOne_SwitchToDifferentApp  )
$UserFunction_GenesisAlphaOne_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GenesisAlphaOne_RestoreFromCS ) 
$UserFunction_GeometryWars3 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GeometryWars3 )
$UserFunction_GeometryWars3_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GeometryWars3_DataSync )
$UserFunction_GeometryWars3_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GeometryWars3_SwitchToDifferentGame )
$UserFunction_GeometryWars3_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GeometryWars3_SwitchToDifferentApp  )
$UserFunction_GeometryWars3_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GeometryWars3_RestoreFromCS )
$UserFunction_GameOfThronesE1 = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GameOfThronesE1 )
$UserFunction_GameOfThronesE1_DataSync = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GameOfThronesE1_DataSync )
$UserFunction_GameOfThronesE1_SwitchToDifferentGame = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GameOfThronesE1_SwitchToDifferentGame )
$UserFunction_GameOfThronesE1_SwitchToDifferentApp  = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GameOfThronesE1_SwitchToDifferentApp  )
$UserFunction_GameOfThronesE1_RestoreFromCS = [System.IO.Path]::Combine( $ExecutingDir, $UserFunction_GameOfThronesE1_RestoreFromCS )
#----------------------------------------------------------------------------------------#


#---------------------------------- eDAT Module Specific Scripts ---------------------------#

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

#---------------------------------- Folder Paths -------------------------------------------#

$CapturedImageFolder     = "Images\Captured\Console\"
$RefImageFolder          = "Images\Reference\XBoxConsole\"
$IconImageFolder         = "Images\Icon\XBoxConsole\"
$VideoFolderPath         = "Video\"
$ImagesPath              = "Images\"
$Global:WindowsRecordPath= "C:\Record"

$CapturedImageFolder     = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $CapturedImageFolder )
$RefImageFolder          = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $RefImageFolder )
$IconImageFolder         = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $IconImageFolder )
$VideoFolderPath         = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $VideoFolderPath )
$ImagesPath              = [System.IO.Path]::Combine( $AssemblyDir -replace "Executables", $ImagesPath )
$Record_VideoPath        = [System.IO.Path]::Combine( $VideoFolderPath ,"video.mp4" )

#---------------------------- Loading eDAT Libraries --------------------------------------------------#

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

$Video_Recording = "$ExecutingDir\..\..\Executables\ffmpeg.exe"

#------------------------------- Loading IR DLLs ----------------------------------#

#$USBUIRT_DLL  = [Reflection.Assembly]::LoadFrom( [System.IO.Path]::Combine( $AssemblyDir,  "UsbUirtManagedWrapper.dll")) 
#$eDAT_USBUIRT       = New-Object UsbUirt.Controller

#$IRtx = "$ExecutingDir\..\..\Executables\uutx.exe"
#. $IRtx

#-------------------------------  Text to Voice Converter ----------------------------------#


Add-Type -AssemblyName System.speech
$VoiceInput = New-Object System.Speech.Synthesis.SpeechSynthesizer

#------------------------------- Loading the scripts ----------------------------------#


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
. $UserFunctionsScript_GOW
. $XboxGamePlay
. $UserFunctions_Deblob
. $UserFunction_ConsoleUpdate
. $commonReportScript

. $UserFunction_DukeNukem3D
. $UserFunction_DukeNukem3D_DataSync
. $UserFunction_DukeNukem3D_SwitchToDifferentGame
. $UserFunction_DukeNukem3D_SwitchToDifferentApp
. $UserFunction_DukeNukem3D_RestoreFromCS

. $UserFunction_DungeonAndGravestone
. $UserFunction_DungeonAndGravestone_DataSync
. $UserFunction_DungeonAndGravestone_SwitchToDifferentGame
. $UserFunction_DungeonAndGravestone_SwitchToDifferentApp
. $UserFunction_DungeonAndGravestone_RestoreFromCS
  
. $UserFunction_DungeonPunks
. $UserFunction_DungeonPunks_DataSync
. $UserFunction_DungeonPunks_SwitchToDifferentGame
. $UserFunction_DungeonPunks_SwitchToDifferentApp
. $UserFunction_DungeonPunks_RestoreFromCS
   
. $UserFunction_DyingReborn
. $UserFunction_DyingReborn_DataSync
. $UserFunction_DyingReborn_SwitchToDifferentGame
. $UserFunction_DyingReborn_SwitchToDifferentApp
. $UserFunction_DyingReborn_RestoreFromCS

. $UserFunction_DynastyWarriors8Empires
. $UserFunction_DynastyWarriors8Empires_DataSync
. $UserFunction_DynastyWarriors8Empires_SwitchToDifferentGame
. $UserFunction_DynastyWarriors8Empires_SwitchToDifferentApp
. $UserFunction_DynastyWarriors8Empires_RestoreFromCS 
. $UserFunction_FIFA16
. $UserFunction_FIFA16_DataSync
. $UserFunction_FIFA16_SwitchToDifferentGame
. $UserFunction_FIFA16_SwitchToDifferentApp 
. $UserFunction_FIFA16_RestoreFromCS
. $UserFunction_NBALive15
. $UserFunction_NBALive15_DataSync
. $UserFunction_NBALive15_SwitchToDifferentGame
. $UserFunction_NBALive15_SwitchToDifferentApp
. $UserFunction_NBALive15_RestoreFromCS
. $UserFunction_NBALive16
. $UserFunction_NBALive16_DataSync
. $UserFunction_NBALive16_SwitchToDifferentGame
. $UserFunction_NBALive16_SwitchToDifferentApp
. $UserFunction_NBALive16_RestoreFromCS
. $UserFunction_EmilyWantsToPlay
. $UserFunction_EmilyWantsToPlay_DataSync
. $UserFunction_EmilyWantsToPlay_SwitchToDifferentGame
. $UserFunction_EmilyWantsToPlay_SwitchToDifferentApp
. $UserFunction_EmilyWantsToPlay_RestoreFromCS
. $UserFunction_NHL19
. $UserFunction_NHL19_DataSync
. $UserFunction_NHL19_SwitchToDifferentGame
. $UserFunction_NHL19_SwitchToDifferentApp
. $UserFunction_NHL19_RestoreFromCS
. $UserFunction_EventideSlavicFable
. $UserFunction_EventideSlavicFable_DataSync
. $UserFunction_EventideSlavicFable_SwitchToDifferentGame
. $UserFunction_EventideSlavicFable_SwitchToDifferentApp
. $UserFunction_EventideSlavicFable_RestoreFromCS 
. $UserFunction_F12017
. $UserFunction_F12017_DataSync
. $UserFunction_F12017_SwitchToDifferentGame
. $UserFunction_F12017_SwitchToDifferentApp 
. $UserFunction_F12017_RestoreFromCS
. $UserFunction_F12018
. $UserFunction_F12018_DataSync
. $UserFunction_F12018_SwitchToDifferentGame
. $UserFunction_F12018_SwitchToDifferentApp
. $UserFunction_F12018_RestoreFromCS
. $UserFunction_FarCry3
. $UserFunction_FarCry3_DataSync
. $UserFunction_FarCry3_SwitchToDifferentGame
. $UserFunction_FarCry3_SwitchToDifferentApp
. $UserFunction_FarCry3_RestoreFromCS
. $UserFunction_FarmForYourLife
. $UserFunction_FarmForYourLife_DataSync
. $UserFunction_FarmForYourLife_SwitchToDifferentGame
. $UserFunction_FarmForYourLife_SwitchToDifferentApp
. $UserFunction_FarmForYourLife_RestoreFromCS
. $UserFunction_F12015
. $UserFunction_F12015_DataSync
. $UserFunction_F12015_SwitchToDifferentGame
. $UserFunction_F12015_SwitchToDifferentApp
. $UserFunction_F12015_RestoreFromCS
. $UserFunction_FarmingSimulator17
. $UserFunction_FarmingSimulator17_DataSync
. $UserFunction_FarmingSimulator17_SwitchToDifferentGame
. $UserFunction_FarmingSimulator17_SwitchToDifferentApp
. $UserFunction_FarmingSimulator17_RestoreFromCS 
. $UserFunction_ForzaHorizon2
. $UserFunction_ForzaHorizon2_DataSync
. $UserFunction_ForzaHorizon2_SwitchToDifferentGame
. $UserFunction_ForzaHorizon2_SwitchToDifferentApp 
. $UserFunction_ForzaHorizon2_RestoreFromCS
. $UserFunction_ForzaMotorsport5
. $UserFunction_ForzaMotorsport5_DataSync
. $UserFunction_ForzaMotorsport5_SwitchToDifferentGame
. $UserFunction_ForzaMotorsport5_SwitchToDifferentApp
. $UserFunction_ForzaMotorsport5_RestoreFromCS
. $UserFunction_FunTownMahjong
. $UserFunction_FunTownMahjong_DataSync
. $UserFunction_FunTownMahjong_SwitchToDifferentGame
. $UserFunction_FunTownMahjong_SwitchToDifferentApp
. $UserFunction_FunTownMahjong_RestoreFromCS
. $UserFunction_GPrimeIntoTheRain
. $UserFunction_GPrimeIntoTheRain_DataSync
. $UserFunction_GPrimeIntoTheRain_SwitchToDifferentGame
. $UserFunction_GPrimeIntoTheRain_SwitchToDifferentApp
. $UserFunction_GPrimeIntoTheRain_RestoreFromCS
. $UserFunction_GearsOfWar
. $UserFunction_GearsOfWar_DataSync
. $UserFunction_GearsOfWar_SwitchToDifferentGame
. $UserFunction_GearsOfWar_SwitchToDifferentApp
. $UserFunction_GearsOfWar_RestoreFromCS 
. $UserFunction_GenesisAlphaOne
. $UserFunction_GenesisAlphaOne_DataSync
. $UserFunction_GenesisAlphaOne_SwitchToDifferentGame
. $UserFunction_GenesisAlphaOne_SwitchToDifferentApp 
. $UserFunction_GenesisAlphaOne_RestoreFromCS
. $UserFunction_GeometryWars3
. $UserFunction_GeometryWars3_DataSync
. $UserFunction_GeometryWars3_SwitchToDifferentGame
. $UserFunction_GeometryWars3_SwitchToDifferentApp
. $UserFunction_GeometryWars3_RestoreFromCS
. $UserFunction_GameOfThronesE1
. $UserFunction_GameOfThronesE1_DataSync
. $UserFunction_GameOfThronesE1_SwitchToDifferentGame
. $UserFunction_GameOfThronesE1_SwitchToDifferentApp
. $UserFunction_GameOfThronesE1_RestoreFromCS
#----------------------------------------------------------------------------------------#

#-------------------------- Reporting  --------------------------------------------------#

#$tpDateTime = Get-Date -Format 'F'
<#$consoleId = "xxxx--xx--xxx"
$serialNo = "123.258.369"
$buildNo = "10.1145.258"#>

#----------------------------------------------------------------------------------------#


Function InitailizeModules{
 

    $Status= InitializePatternMatch

    $Status= InitializePixelCompare
    
    $Status =  InitializeTesseract ($OCRLabel)
    StatusCheck ( $Status )
   
    Intialize_Serial -SerialPort $SerialLabel1

    Connect_Serial -SerialPort $SerialLabel1

    Initialize_RelayPorts

    Init_ImageModule

    Initialize_Report

    InitializeKBM
 
 if($Global:ConfigAnalog -eq 1) {
    ConfigAnalogController
 }
}

#----------------------------------------------------------------------------------------#

Function ConfigAnalogController{
  Intialize_Serial -SerialPort $SerialLabel2
  Connect_Serial -SerialPort $SerialLabel2
  SetDefaultValueDP
}

#----------------------------------------------------------------------------------------#


Function Init_Analog{
  AnalogInitialize "NI_Dev1" 

  SetDefaultValue

}

#----------------------------------------------------------------------------------------#

Function DeletePrevCapturedItems
{
# Remove Previous captured images and video
    $CapturedImagesDelete      = "$ExecutingDir\..\..\Images\Captured\XBoxConsole\*" 
    $CapturedVideoDelete       = "$ExecutingDir\..\..\Video\*" 
  
    Remove-Item –path $CapturedImagesDelete
    Remove-Item –path $CapturedVideoDelete
   # Remove-Item –path $Global:WindowsRecordPath
}

#----------------------------------------------------------------------------------------#

Function Initialize_Report{
   $ReportFile       = "$ExecutingDir\..\..\Report\eDAT_XboxOne_TestReport_Template.doc"
        
    $Status = InitializeReport -Label $ReportLabel -ReportFile $ReportFile
    
}

#----------------------------------------------------------------------------------------#


Function DIspose_All{
   
    $Status = ImageDevice_Disconnect ( $ImageDevice )
    StatusCheck ( $Status )
    $oImageCompare = $null
    $oOCR = $null
    DisconnectKBM
    Disconnect_Serial -SerialPort $SerialLabel1
    if($Global:ConfigAnalog -eq 1) { Disconnect_Serial -SerialPort $SerialLabel2   }
    DisposeReport
    $Rport = $null 


} 

#----------------------------------------------------------------------------------------#

Function Init_ImageModule{

    $Status =   ImageCapture_Initialise ( $ImageDevice )
    StatusCheck ( $Status )
     
    $Status = ImageDevice_Connect ( $ImageDevice )
    StatusCheck ( $Status )
    
    $Global:ExecutionStatus = $true

}
#----------------------------------------------------------------------------------------#


Function Initialize_RelayPorts{

  Press_Ctrller -Data $InitPortOne 
  Press_Ctrller -Data $InitPortTwo 
  Press_Ctrller -Data $InitPortThree 

}

#----------------------------------------------------------------------------------------#


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
#----------------------------------------------------------------------------------------#


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

#----------------------------------------------------------------------------------------#

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

#----------------------------------------------------------------------------------------#


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

#----------------------------------------------------------------------------------------#


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

#----------------------------------------------------------------------------------------#

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

#----------------------------------------------------------------------------------------#

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
#----------------------------------------------------------------------------------------#


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
#----------------------------------------------------------------------------------------#

Function Goto_ContentRestrictions{

 Verify_SignInSecurity

 Verify_Contentrestrictions

}
#----------------------------------------------------------------------------------------#

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
#----------------------------------------------------------------------------------------#

Function Set_AgeLimit{

   Verify_Access2ContentnApps
   Select_AppropriateAge        
   Confirm_SelectedAge
   

}
#----------------------------------------------------------------------------------------#

Function Launch_NewGame{
    Enter_SearchPage
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Search_Game
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Select_Game
    Set_FixedDelay -DelayTime $Global:TwoSecs
    Launch_Game -count $one
       
}

#----------------------------------------------------------------------------------------#



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
#----------------------------------------------------------------------------------------#


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
#----------------------------------------------------------------------------------------#

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
#----------------------------------------------------------------------------------------#

Function Verify_Unrestricted{
    
    $CapturedImage = "Access2ContentnApps"
    $IconImage = "Unrestricted1"    
    Captured_ImgPath -img_name $CapturedImage
    Icon_ImgPath -img_name $IconImage
    $ret = Match_Pattern -Cap_Img $Global:CapturedImgPath -Icon_Img $Global:IconImgPath
    return $ret.Data.MatchFound
}
#----------------------------------------------------------------------------------------#


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
