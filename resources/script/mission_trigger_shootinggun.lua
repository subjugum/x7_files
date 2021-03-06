require("Resources/Script/KeyMacro.lua")
SPAWN_FOCUS_ACTOR = 0
SPAWN_ENERMY_SENTRYGUN = 1
SPAWN_ENERMY_SENTYFORCE = 2
SPAWN_TRIGGER_BEGIN = 0
SPAWN_NOTIFY = 1
NI_START = 101
NI_Text_Welcom01_OFF = 102
NI_Text_Welcom02_OFF = 103
NI_Text_Welcom03_OFF = 104
NI_SCORE_COMPLETED01 = 105
NI_ATTACK_1_SUBMACHINE_GUN = 106
NI_Text_CompleteTip01_on = 107
NI_Text_CompleteTip01_off = 108
NI_Text_CompleteTip02_on = 109
NI_Text_CompleteTip02_off = 110
NI_SCORE_COMPLETED02 = 111
NI_RELOAD_SUBMACHINE_GUN = 112
NI_CONGRATULATION = 113
NI_ESC_CHECK = 114
LoadStringTable("Language/Script/challenge_string_table.x7")
TXT_Weapon_ShootingGun_01 = GetString("TXT_Weapon_ShootingGun_01")
TXT_Weapon_ShootingGun_02 = GetString("TXT_Weapon_ShootingGun_02")
TXT_Weapon_ShootingGun_03 = GetString("TXT_Weapon_ShootingGun_03")
TXT_Weapon_ShootingGun_04 = GetString("TXT_Weapon_ShootingGun_04")
TXT_Weapon_ShootingGun_05 = GetString("TXT_Weapon_ShootingGun_05")
TXT_Weapon_ShootingGun_06 = GetString("TXT_Weapon_ShootingGun_06")
TXT_Weapon_ShootingGun_07 = GetString("TXT_Weapon_ShootingGun_07")
TXT_Weapon_ShootingGun_08 = GetString("TXT_Weapon_ShootingGun_08")
TXT_Weapon_ShootingGun_09 = GetString("TXT_Weapon_ShootingGun_09")
TXT_Weapon_ShootingGun_10 = GetString("TXT_Weapon_ShootingGun_10")
TXT_Weapon_ShootingGun_11 = GetString("TXT_Weapon_ShootingGun_11")
TXT_Weapon_ShootingGun_12 = GetString("TXT_Weapon_ShootingGun_12")
ClearStringTable()
index = 0
KEY_GUIDE = index
index = index + 1
KEYBOARD_STATE_MOVE = index
index = index + 1
KEYBOARD_STATE_JUMP = index
index = index + 1
KEYBOARD_STATE_SKILL = index
index = index + 1
KEYBOARD_STATE_SLIDE = index
index = index + 1
KEYBOARD_STATE_NON = index
index = index + 1
MOUSE_GUIDE = index
index = index + 1
MOUSE_STATE_ACTIVE = index
index = index + 1
MOUSE_STATE_NON = index
index = index + 1
function InitPvETrigger()
  PvESystem:SetTotalStage(1)
  OnShootingGunLicenseTestStep01()
end
function OnShootingGunLicenseTestStep01()
  ShootingGunLicense = PvESystem:GetEmptyStage()
  Timer_TextStart = TriggerPackage:GetEventAlram(0, NI_START, 0, 0, false)
  Timer_Text_Welcom01_Delay = TriggerPackage:GetEventAlram(NI_START, NI_Text_Welcom01_OFF, 5000, 0, false)
  Timer_Text_Welcom02_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 5000, 0, false)
  Timer_Text_Welcom03_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 5000, 0, false)
  Timer_Text_CompleteTip01_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false)
  Timer_Text_CompleteTip01_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 5000, 0, false)
  Timer_Text_CompleteTip02_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 500, 0, false)
  Timer_Text_CompleteTip02_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 5000, 0, false)
  WeaponSlotRemoveAll = TriggerPackage:GetWeaponSlotRemoveAll(NI_START)
  Weapon_Drop_01 = TriggerPackage:GetWeaponDrop(NI_Text_Welcom01_OFF, 2020002, 6, 671, -2199)
  Weapon_Drop_02 = TriggerPackage:GetWeaponDrop(NI_Text_Welcom01_OFF, 2010018, -400, 671, -2199)
  Text_Welcom01 = TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_ShootingGun_01, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom02 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_ShootingGun_02, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom03 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_ShootingGun_03, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Guide01 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_ShootingGun_04, "Resources/GUI/New/TutorialImage_1.gui")
  Text_Guide02 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_SCORE_COMPLETED02, TXT_Weapon_ShootingGun_05, "Resources/GUI/New/TutorialImage_1.gui")
  Text_CompleteTip01 = TriggerPackage:GetTextViewerExA(512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_Weapon_ShootingGun_08, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  Text_CompleteTip02 = TriggerPackage:GetTextViewerExA(512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_off, TXT_Weapon_ShootingGun_09, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  Text_ClearStep01 = TriggerPackage:GetTextViewerExA(600, 500, NI_Text_CompleteTip02_off, 0, TXT_Weapon_ShootingGun_12, "Resources/GUI/New/TutorialImage_1.gui")
  ScoreCheck01 = TriggerPackage:GetScoreObserver(50, 200, NI_ATTACK_1_SUBMACHINE_GUN, NI_SCORE_COMPLETED01, TXT_Weapon_ShootingGun_06, 5)
  ScoreCheck02 = TriggerPackage:GetScoreObserver(50, 220, NI_RELOAD_SUBMACHINE_GUN, NI_SCORE_COMPLETED02, TXT_Weapon_ShootingGun_10, 3)
  ActorAttackCheck01 = TriggerPackage:GetActorAttackObserver(NI_SCORE_COMPLETED01, NI_ATTACK_1_SUBMACHINE_GUN, "ATTACK_1_MG2", ScoreCheck01)
  ActorAttackCheck02 = TriggerPackage:GetActorAttackObserver(NI_SCORE_COMPLETED01, NI_ATTACK_1_SUBMACHINE_GUN, "ATTACK_1_SMG2", ScoreCheck01)
  ActorAttackCheck03 = TriggerPackage:GetActorAttackObserver(NI_SCORE_COMPLETED02, NI_RELOAD_SUBMACHINE_GUN, "RELOAD_MG2", ScoreCheck02)
  ActorAttackCheck04 = TriggerPackage:GetActorAttackObserver(NI_SCORE_COMPLETED02, NI_RELOAD_SUBMACHINE_GUN, "RELOAD_SPARK_RIFLE", ScoreCheck02)
  RegActorAttackCheck01 = TriggerPackage:GetObserverRegister(NI_Text_Welcom03_OFF, ActorAttackCheck01)
  RegActorAttackCheck02 = TriggerPackage:GetObserverRegister(NI_Text_Welcom03_OFF, ActorAttackCheck02)
  RegActorAttackCheck03 = TriggerPackage:GetObserverRegister(NI_SCORE_COMPLETED01, ActorAttackCheck03)
  RegActorAttackCheck04 = TriggerPackage:GetObserverRegister(NI_SCORE_COMPLETED01, ActorAttackCheck04)
  NarOK01 = TriggerPackage:GetNarrationPlayer(PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0)
  NarOK02 = TriggerPackage:GetNarrationPlayer(PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0)
  PressEscChecker = TriggerPackage:GetKeyPressCheckerEx(NI_Text_CompleteTip02_off, NI_ESC_CHECK, IK_ESCAPE, NI_ESC_CHECK)
  Mission_Prize = TriggerPackage:GetChallengePrize(NI_ESC_CHECK, NI_CONGRATULATION)
  Congraturation_Step01 = TriggerPackage:GetChallengeComplete(NI_CONGRATULATION)
  ShootingGunLicense:Register(RegActorAttackCheck01)
  ShootingGunLicense:Register(RegActorAttackCheck02)
  ShootingGunLicense:Register(RegActorAttackCheck03)
  ShootingGunLicense:Register(RegActorAttackCheck04)
  ShootingGunLicense:Register(NarOK01)
  ShootingGunLicense:Register(NarOK02)
  ShootingGunLicense:Register(Timer_Text_Welcom01_Delay)
  ShootingGunLicense:Register(Timer_Text_Welcom02_Delay)
  ShootingGunLicense:Register(Timer_Text_Welcom03_Delay)
  ShootingGunLicense:Register(Timer_Text_CompleteTip01_on)
  ShootingGunLicense:Register(Timer_Text_CompleteTip01_off)
  ShootingGunLicense:Register(Timer_Text_CompleteTip02_on)
  ShootingGunLicense:Register(Timer_Text_CompleteTip02_off)
  ShootingGunLicense:Register(WeaponSlotRemoveAll)
  ShootingGunLicense:Register(Weapon_Drop_01)
  ShootingGunLicense:Register(Weapon_Drop_02)
  ShootingGunLicense:Register(Text_Welcom01)
  ShootingGunLicense:Register(Text_Welcom02)
  ShootingGunLicense:Register(Text_Welcom03)
  ShootingGunLicense:Register(Text_Guide01)
  ShootingGunLicense:Register(Text_Guide02)
  ShootingGunLicense:Register(Text_ClearStep01)
  ShootingGunLicense:Register(Text_CompleteTip01)
  ShootingGunLicense:Register(Text_CompleteTip02)
  ShootingGunLicense:Register(PressEscChecker)
  ShootingGunLicense:Register(Mission_Prize)
  ShootingGunLicense:Register(Congraturation_Step01)
  PvESystem:AddStage(0, ShootingGunLicense)
end
