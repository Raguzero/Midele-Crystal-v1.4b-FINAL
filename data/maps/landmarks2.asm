landmark1: MACRO
; x, y, name
	db \1, \2
	dw \3
ENDM

Landmarks2: ; 0x1ca8c3
; entries correspond to constants/landmark_constants.asm
	landmark   0,   0, SpecialMapName2
	landmark 148, 116, NewBarkTownName2
	landmark 136, 116, Route29Name2
	landmark 108, 116, CherrygroveCityName2
	landmark 108,  96, Route30Name2
	landmark 104,  76, Route31Name2
	landmark  92,  76, VioletCityName2
	landmark  93,  74, SproutTowerName2
	landmark  92, 108, Route32Name2
	landmark  84,  92, RuinsOfAlphName2
	landmark  92, 140, UnionCaveName2
	landmark  90, 140, Route33Name2
	landmark  76, 140, AzaleaTownName2
	landmark  78, 138, SlowpokeWellName2
	landmark  60, 136, IlexForestName2
	landmark  60, 128, Route34Name2
	landmark  60, 108, GoldenrodCityName2
	landmark  58, 108, RadioTowerName2
	landmark  60,  92, Route35Name2
	landmark  60,  76, NationalParkName2
	landmark  72,  76, Route36Name2
	landmark  76,  68, Route37Name2
	landmark  76,  60, EcruteakCityName2
	landmark  78,  58, TinTowerName2
	landmark  74,  58, BurnedTowerName2
	landmark  60,  60, Route38Name2
	landmark  44,  64, Route39Name2
	landmark  44,  76, OlivineCityName2
	landmark  46,  78, LighthouseName2
	landmark  36,  72, BattleTowerName2
	landmark  36,  80, Route40Name2
	landmark  36, 108, WhirlIslandsName2
	landmark  36, 116, Route41Name2
	landmark  28, 116, CianwoodCityName2
	landmark 100,  60, Route42Name2
	landmark  92,  60, MtMortarName2
	landmark 116,  60, MahoganyTownName2
	landmark 116,  52, Route43Name2
	landmark 116,  44, LakeOfRageName2
	landmark 128,  60, Route44Name2
	landmark 138,  54, IcePathName2
	landmark 140,  60, BlackthornCityName2
	landmark 140,  52, DragonsDenName2
	landmark 140,  80, Route45Name2
	landmark 120,  88, DarkCaveName2
	landmark 132, 104, Route46Name2
	landmark 156,  84, SilverCaveName2
	landmark 60, 104,  MicoloHideoutName2
	landmark  60, 124, PalletTownName2
	landmark  60, 108, Route1Name2
	landmark  60,  92, ViridianCityName2
	landmark  60,  80, Route2Name2
	landmark  60,  68, PewterCityName2
	landmark  72,  68, Route3Name2
	landmark  84,  68, MtMoonName2
	landmark  96,  68, Route4Name2
	landmark 108,  68, CeruleanCityName2
	landmark 108,  60, Route24Name2
	landmark 116,  52, Route25Name2
	landmark 108,  76, Route5Name2
	landmark 116,  92, UndergroundName2
	landmark 108,  92, Route6Name2
	landmark 108, 100, VermilionCityName2
	landmark  96,  76, DiglettsCaveName2
	landmark  96,  84, Route7Name2
	landmark 124,  84, Route8Name2
	landmark 124,  68, Route9Name2
	landmark 140,  68, RockTunnelName2
	landmark 140,  72, Route10Name2
	landmark 140,  76, PowerPlantName2
	landmark 140,  84, LavenderTownName2
	landmark 148,  84, LavRadioTowerName2
	landmark  84,  84, CeladonCityName2
	landmark 108,  84, SaffronCityName2
	landmark 124, 100, Route11Name2
	landmark 140,  96, Route12Name2
	landmark 132, 116, Route13Name2
	landmark 124, 128, Route14Name2
	landmark 112, 132, Route15Name2
	landmark  76,  84, Route16Name2
	landmark  76, 108, Route17Name2
	landmark  88, 132, Route18Name2
	landmark 100, 132, FuchsiaCityName2
	landmark 100, 144, Route19Name2
	landmark  84, 148, Route20Name2
	landmark  76, 148, SeafoamIslandsName2
	landmark  60, 148, CinnabarIslandName2
	landmark  60, 136, Route21Name2
	landmark  44,  84, Route22Name2
	landmark  36,  68, VictoryRoadName2
	landmark  36,  60, Route23Name2
	landmark  36,  52, IndigoPlateauName2
	landmark  36, 108, Route26Name2
	landmark  28, 116, Route27Name2
	landmark  20, 116, TohjoFallsName2
	landmark  28,  84, Route28Name2
	landmark 148, 132, FastShipName2
; 0x1caa43

NewBarkTownName2:     db "NEW BARK@"
CherrygroveCityName2: db "CHERRYGROVE@"
VioletCityName2:      db "VIOLET@"
AzaleaTownName2:      db "AZALEA@"
GoldenrodCityName2:   db "GOLDENROD@"
EcruteakCityName2:    db "ECRUTEAK"
OlivineCityName2:     db "OLIVINE@"
CianwoodCityName2:    db "CIANWOOD@"
MahoganyTownName2:    db "MAHOGANY@"
BlackthornCityName2:  db "BLACKTHORN@"
LakeOfRageName2:      db "LAKEOFRAGE@"
SilverCaveName2:      db "SILVERCAVE@"
SproutTowerName2:     db "SPROUT TWR@"
RuinsOfAlphName2:     db "ALPH RUINS@"
UnionCaveName2:       db "UNION CAVE@"
SlowpokeWellName2:    db "SLOWPKWELL@"
RadioTowerName2:      db "RADIOTOWER@"
PowerPlantName2:      db "POWERPLANT@"
NationalParkName2:    db "NAT. PARK@"
TinTowerName2:        db "TIN TOWER@"
LighthouseName2:      db "LIGHTHOUSE@"
WhirlIslandsName2:    db "WHIRL ISLE@"
MtMortarName2:        db "MT.MORTAR@"
DragonsDenName2:      db "DRAGON DEN@"
IcePathName2:         db "ICE PATH@"
NotApplicableName2:   db "N/A@" ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName2:      db "PALLET TWN@"
ViridianCityName2:    db "VIRIDIAN@"
PewterCityName2:      db "PEWTER@"
CeruleanCityName2:    db "CERULEAN@"
LavenderTownName2:    db "LAVENDER@"
VermilionCityName2:   db "VERMILION@"
CeladonCityName2:     db "CELADON@"
SaffronCityName2:     db "SAFFRON"
FuchsiaCityName2:     db "FUCHSIA@"
CinnabarIslandName2:  db "CINNABAR@"
IndigoPlateauName2:   db "INDIGO PL.@"
VictoryRoadName2:     db "VICTORY RD@"
MtMoonName2:          db "MT.MOON@"
RockTunnelName2:      db "ROCK TUNNL@"
LavRadioTowerName2:   db "LAV TOWER@"
SilphCoName2:         db "SILPH CO.@"
SafariZoneName2:      db "SAFARIZONE@"
SeafoamIslandsName2:  db "SEAFOAM@"
PokemonMansionName2:  db "MANSION@"
CeruleanCaveName2:    db "CERUL.CAVE@"
Route1Name2:          db "ROUTE 1@"
Route2Name2:          db "ROUTE 2@"
Route3Name2:          db "ROUTE 3@"
Route4Name2:          db "ROUTE 4@"
Route5Name2:          db "ROUTE 5@"
Route6Name2:          db "ROUTE 6@"
Route7Name2:          db "ROUTE 7@"
Route8Name2:          db "ROUTE 8@"
Route9Name2:          db "ROUTE 9@"
Route10Name2:         db "ROUTE 10@"
Route11Name2:         db "ROUTE 11@"
Route12Name2:         db "ROUTE 12@"
Route13Name2:         db "ROUTE 13@"
Route14Name2:         db "ROUTE 14@"
Route15Name2:         db "ROUTE 15@"
Route16Name2:         db "ROUTE 16@"
Route17Name2:         db "ROUTE 17@"
Route18Name2:         db "ROUTE 18@"
Route19Name2:         db "ROUTE 19@"
Route20Name2:         db "ROUTE 20@"
Route21Name2:         db "ROUTE 21@"
Route22Name2:         db "ROUTE 22@"
Route23Name2:         db "ROUTE 23@"
Route24Name2:         db "ROUTE 24@"
Route25Name2:         db "ROUTE 25@"
Route26Name2:         db "ROUTE 26@"
Route27Name2:         db "ROUTE 27@"
Route28Name2:         db "ROUTE 28@"
Route29Name2:         db "ROUTE 29@"
Route30Name2:         db "ROUTE 30@"
Route31Name2:         db "ROUTE 31@"
Route32Name2:         db "ROUTE 32@"
Route33Name2:         db "ROUTE 33@"
Route34Name2:         db "ROUTE 34@"
Route35Name2:         db "ROUTE 35@"
Route36Name2:         db "ROUTE 36@"
Route37Name2:         db "ROUTE 37@"
Route38Name2:         db "ROUTE 38@"
Route39Name2:         db "ROUTE 39@"
Route40Name2:         db "ROUTE 40@"
Route41Name2:         db "ROUTE 41@"
Route42Name2:         db "ROUTE 42@"
Route43Name2:         db "ROUTE 43@"
Route44Name2:         db "ROUTE 44@"
Route45Name2:         db "ROUTE 45@"
Route46Name2:         db "ROUTE 46@"
DarkCaveName2:        db "DARK CAVE@"
IlexForestName2:      db "ILEXFOREST@"
BurnedTowerName2:     db "BURNED TWR@"
FastShipName2:        db "FAST SHIP@"
ViridianForestName2:  db "VIR.FORST@"
DiglettsCaveName2:    db "DIGLETCAVE@"
TohjoFallsName2:      db "TOHJOFALLS@"
UndergroundName2:     db "UNDRGROUND@"
BattleTowerName2:     db "BATTLETOWER@"
SpecialMapName2:      db "SPECIAL@"
MicoloHideoutName2:   db "MICOLO LAB@"
