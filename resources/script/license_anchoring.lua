SPAWN_FOCUS_ACTOR = 0
SPAWN_ENERMY_SENTRYGUN = 1
SPAWN_ENERMY_SENTYFORCE = 2
SPAWN_TRIGGER_BEGIN = 0
SPAWN_NOTIFY = 1
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
function OnAnchoringLicenseTest()
  TutorialSystem:SetTotalStage(2)
  OnAnchoringLicenseTestStep01()
  OnAnchoringLicenseTestStep02()
end
NI_START = 101
NI_Text_Welcom01_OFF = 102
NI_Text_Welcom02_OFF = 103
NI_Text_Welcom03_OFF = 104
NI_SCORE_COMPLETED01 = 105
NI_SKILL_ANCHORING = 106
NI_Text_CompleteTip01_on = 107
NI_Text_CompleteTip01_off = 108
NI_Text_CompleteTip02_on = 109
NI_Text_CompleteTip02_off = 110
NI_CONGRATULATION = 111
NI_SCORE_COMPLETED02 = 112
LoadStringTable("Language/Script/tutorial_string_table.x7")
TXT_Skill_Anchoring_01 = GetString("TXT_Skill_Anchoring_01")
TXT_Skill_Anchoring_02 = GetString("TXT_Skill_Anchoring_02")
TXT_Skill_Anchoring_03 = GetString("TXT_Skill_Anchoring_03")
TXT_Skill_Anchoring_04 = GetString("TXT_Skill_Anchoring_04")
TXT_Skill_Anchoring_05 = GetString("TXT_Skill_Anchoring_05")
TXT_Skill_Anchoring_06 = GetString("TXT_Skill_Anchoring_06")
TXT_Skill_Anchoring_07 = GetString("TXT_Skill_Anchoring_07")
TXT_Skill_Anchoring_08 = GetString("TXT_Skill_Anchoring_08")
TXT_Skill_Anchoring_09 = GetString("TXT_Skill_Anchoring_09")
TXT_Skill_Anchoring_10 = GetString("TXT_Skill_Anchoring_10")
TXT_Skill_Anchoring_11 = GetString("TXT_Skill_Anchoring_11")
TXT_Skill_Anchoring_12 = GetString("TXT_Skill_Anchoring_12")
TXT_Skill_Anchoring_13 = GetString("TXT_Skill_Anchoring_13")
TXT_Skill_Anchoring_14 = GetString("TXT_Skill_Anchoring_14")
TXT_Skill_Anchoring_15 = GetString("TXT_Skill_Anchoring_15")
TXT_Skill_Anchoring_16 = GetString("TXT_Skill_Anchoring_16")
TXT_Skill_Anchoring_17 = GetString("TXT_Skill_Anchoring_17")
ClearStringTable()
function OnAnchoringLicenseTestStep01()
  AnchoringLicense = TutorialSystem:GetEmptyStage()
  ActorSpawn = TriggerPackage:GetSpawnHelper(SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true)
  AnchoringLoad = TriggerPackage:GetItemDuplicator(0, 3010001, 0, 0)
  Timer_TextStart = TriggerPackage:GetEventAlram(0, NI_START, 0, 0, false)
  Timer_Text_Welcom01_Delay = TriggerPackage:GetEventAlram(NI_START, NI_Text_Welcom01_OFF, 5000, 0, false)
  Timer_Text_Welcom02_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 2000, 0, false)
  Timer_Text_Welcom03_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false)
  Timer_Text_CompleteTip01_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 1000, 0, false)
  Timer_Text_CompleteTip01_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 6000, 0, false)
  Timer_Text_CompleteTip02_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 1000, 0, false)
  Timer_Text_CompleteTip02_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 6000, 0, false)
  Text_ClearStep01 = TriggerPackage:GetTextViewerEx(220, 250, NI_Text_CompleteTip02_off, 0, TXT_Skill_Anchoring_10, "Resources/GUI/New/TutorialImage_1.gui")
  KeyPermiter01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_START, NI_START, false)
  KeyPermiter02 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true)
  KeyPermiter03 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_on, false)
  KeyPermiter04 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_off, NI_Text_CompleteTip01_off, true)
  KeyPermiter05 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_on, false)
  KeyPermiter06 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_off, NI_Text_CompleteTip02_off, true)
  Arrow_Arrow2_off_01 = TriggerPackage:GetSceneVisible(true, "lc_arrow2.scn", NI_START)
  Arrow_Anc_off_01 = TriggerPackage:GetSceneVisible(true, "lc_anc_arrow.scn", NI_START)
  Arrow_Fly_off_01 = TriggerPackage:GetSceneVisible(true, "lc_fly_point.scn", NI_START)
  Arrow_Gate_off_01 = TriggerPackage:GetSceneVisible(true, "lc_arrow.scn", NI_START)
  Arrow_AncPoint_off_01 = TriggerPackage:GetSceneVisible(true, "lc_anc_point.scn", NI_START)
  Arrow_AncPoint_on_01 = TriggerPackage:GetSceneVisible(false, "lc_anc_point.scn", NI_Text_CompleteTip01_off)
  Arrow_Gate_on_01 = TriggerPackage:GetSceneVisible(false, "lc_arrow.scn", NI_Text_CompleteTip02_off)
  Text_Welcom01 = TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Skill_Anchoring_01, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom02 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Skill_Anchoring_02, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom03 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Skill_Anchoring_03, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Guide01 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_Text_CompleteTip01_on, TXT_Skill_Anchoring_04, "Resources/GUI/New/TutorialImage_1.gui")
  Text_Guide02 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_Text_CompleteTip02_on, TXT_Skill_Anchoring_09, "Resources/GUI/New/TutorialImage_1.gui")
  Text_CompleteTip01 = TriggerPackage:GetTextViewerExA(512, 300, NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, TXT_Skill_Anchoring_07, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  Text_CompleteTip02 = TriggerPackage:GetTextViewerExA(512, 300, NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, TXT_Skill_Anchoring_08, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  ScoreCheck01 = TriggerPackage:GetScoreObserver(50, 200, NI_SKILL_ANCHORING, NI_SCORE_COMPLETED01, TXT_Skill_Anchoring_05, 3)
  Dummy_ScoreCheck01 = TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, NI_SKILL_ANCHORING, TXT_Skill_Anchoring_06, "")
  ActorAttackCheck01 = TriggerPackage:GetActorAttackObserver(NI_SCORE_COMPLETED01, NI_SKILL_ANCHORING, "SKILL_ANCHORING", ScoreCheck01)
  RegActorAttackCheck01 = TriggerPackage:GetObserverRegister(NI_Text_Welcom03_OFF, ActorAttackCheck01)
  NarOK01 = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0)
  NarOK02 = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0)
  GateOpen_Step01 = TriggerPackage:GetCollisionChecker("trg_anc_point", NI_SCORE_COMPLETED02, false)
  RegGateOpen_Step01 = TriggerPackage:GetObserverRegister(NI_Text_CompleteTip01_off, GateOpen_Step01)
  GateOpen_Step02 = TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false)
  RegGateOpen_Step02 = TriggerPackage:GetObserverRegister(NI_Text_CompleteTip02_off, GateOpen_Step02)
  MessageBox_Step01 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, 0, 13)
  Congraturation_Step01 = TriggerPackage:GetTutorialComplete(NI_CONGRATULATION)
  AnchoringLicense:Register(ActorSpawn)
  AnchoringLicense:Register(AnchoringLoad)
  AnchoringLicense:Register(Timer_TextStart)
  AnchoringLicense:Register(Timer_Text_Welcom01_Delay)
  AnchoringLicense:Register(Timer_Text_Welcom02_Delay)
  AnchoringLicense:Register(Timer_Text_Welcom03_Delay)
  AnchoringLicense:Register(Timer_Text_CompleteTip01_on)
  AnchoringLicense:Register(Timer_Text_CompleteTip01_off)
  AnchoringLicense:Register(Timer_Text_CompleteTip02_on)
  AnchoringLicense:Register(Timer_Text_CompleteTip02_off)
  AnchoringLicense:Register(Text_ClearStep01)
  AnchoringLicense:Register(KeyPermiter01)
  AnchoringLicense:Register(KeyPermiter02)
  AnchoringLicense:Register(KeyPermiter03)
  AnchoringLicense:Register(KeyPermiter04)
  AnchoringLicense:Register(KeyPermiter05)
  AnchoringLicense:Register(KeyPermiter06)
  AnchoringLicense:Register(Arrow_Arrow2_off_01)
  AnchoringLicense:Register(Arrow_Anc_off_01)
  AnchoringLicense:Register(Arrow_Fly_off_01)
  AnchoringLicense:Register(Arrow_Gate_off_01)
  AnchoringLicense:Register(Arrow_AncPoint_off_01)
  AnchoringLicense:Register(Arrow_AncPoint_on_01)
  AnchoringLicense:Register(Arrow_Gate_on_01)
  AnchoringLicense:Register(Text_Welcom01)
  AnchoringLicense:Register(Text_Welcom02)
  AnchoringLicense:Register(Text_Welcom03)
  AnchoringLicense:Register(Text_Guide01)
  AnchoringLicense:Register(Text_Guide02)
  AnchoringLicense:Register(Text_CompleteTip01)
  AnchoringLicense:Register(Text_CompleteTip02)
  AnchoringLicense:Register(Dummy_ScoreCheck01)
  AnchoringLicense:Register(RegActorAttackCheck01)
  AnchoringLicense:Register(NarOK01)
  AnchoringLicense:Register(NarOK02)
  AnchoringLicense:Register(RegGateOpen_Step01)
  AnchoringLicense:Register(RegGateOpen_Step02)
  AnchoringLicense:Register(Congraturation_Step01)
  AnchoringLicense:Register(MessageBox_Step01)
  TutorialSystem:AddStage(0, AnchoringLicense)
end
NI_Start_Step02 = 201
NI_Text_Step02Start_off = 202
NI_TestStart_Step02 = 203
NI_Text_TestStartStep02_OFF = 204
NI_Fail = 205
NI_Success = 999
NI_Text_TestFail_OFF = 207
NI_Text_TestSuccess_OFF = 208
NI_SayThree = 209
NI_SayTwo = 210
NI_SayOne = 211
function OnAnchoringLicenseTestStep02()
  TestStage = TutorialSystem:GetEmptyStage()
  ActorSpawn = TriggerPackage:GetSpawnHelper(SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true)
  AnchoringLoad = TriggerPackage:GetItemDuplicator(0, 3010001, 0, 0)
  Timer_StartStep02 = TriggerPackage:GetEventAlram(0, NI_Start_Step02, 0, 0, false)
  Timer_Text_Step02Start = TriggerPackage:GetEventAlram(NI_Start_Step02, NI_Text_Step02Start_off, 5000, 0, false)
  Timer_ReadyStep02 = TriggerPackage:GetEventAlram(NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false)
  Timer_Text_TestStartStep02_off = TriggerPackage:GetEventAlram(NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false)
  Timer_End = TriggerPackage:GetEventAlram(NI_TestStart_Step02, NI_Fail, 60000, NI_Success, false)
  TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, TXT_Skill_Anchoring_17, 1)
  Timer_Text_TestFail_off = TriggerPackage:GetEventAlram(NI_Fail, NI_Text_TestFail_OFF, 3000, 0, false)
  Timer_Text_TestSuccess_off = TriggerPackage:GetEventAlram(NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false)
  Hold_Actor_Step02_01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false)
  Realse_Actor_Step02_01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true)
  Arrow_AncPoint_off_01 = TriggerPackage:GetSceneVisible(false, "lc_anc_point.scn", NI_Text_CompleteTip01_off)
  Arrow_Gate_off_01 = TriggerPackage:GetSceneVisible(false, "lc_arrow.scn", NI_Text_CompleteTip02_off)
  Arrow_Arrow2_on_01 = TriggerPackage:GetSceneVisible(false, "lc_arrow2.scn", NI_Start_Step02)
  Arrow_Anc_on_01 = TriggerPackage:GetSceneVisible(false, "lc_anc_arrow.scn", NI_Start_Step02)
  Text_Step02Start = TriggerPackage:GetTextViewerExA(512, 250, NI_Start_Step02, NI_Text_Step02Start_off, TXT_Skill_Anchoring_11, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Step02Ready = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, TXT_Skill_Anchoring_12, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_TestStartStep02 = TriggerPackage:GetTextViewerExA(512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, TXT_Skill_Anchoring_13, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Guide_Step02_01 = TriggerPackage:GetTextViewerEx(600, 500, NI_TestStart_Step02, 0, TXT_Skill_Anchoring_14, "Resources/GUI/New/TutorialImage_1.gui")
  Text_TestFail = TriggerPackage:GetTextViewerExA(512, 250, NI_Fail, NI_Text_TestFail_OFF, TXT_Skill_Anchoring_15, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_TestSuccess = TriggerPackage:GetTextViewerExA(512, 200, NI_Success, NI_Text_TestSuccess_OFF, TXT_Skill_Anchoring_16, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  GoalOpen_Step01 = TriggerPackage:GetCollisionChecker("trg_arrive_02", NI_Success, false)
  RegGateOpen_Step01 = TriggerPackage:GetObserverRegister(NI_Text_TestStartStep02_OFF, GoalOpen_Step01)
  Timer_SayThree = TriggerPackage:GetEventAlram(NI_Text_Step02Start_off, NI_SayThree, 2000, 0, false)
  Timer_SayTwo = TriggerPackage:GetEventAlram(NI_SayThree, NI_SayTwo, 1000, 0, false)
  Timer_SayOne = TriggerPackage:GetEventAlram(NI_SayTwo, NI_SayOne, 1000, 0, false)
  NarThree = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\3.ogg", "", NI_SayThree, 0, 0, 0, 0)
  NarTwo = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\2.ogg", "", NI_SayTwo, 0, 0, 0, 0)
  NarOne = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\1.ogg", "", NI_SayOne, 0, 0, 0, 0)
  NarEnd = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Success, 0, 0, 0, 0)
  NarWinGame = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_have_won_the_match.ogg", "", NI_Success, 0, 0, 0, 0)
  InPutLicense = TriggerPackage:GetItemLicensed(NI_Success, 13)
  Hold_Actor_Fail = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false)
  NarTimeIsUP = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0)
  NarLostGame = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0)
  MessageBox_Step02 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 13)
  MessageBox_Step03 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, 0, 13)
  TestSuccessEnd = TriggerPackage:GetTutorialComplete(NI_Text_TestSuccess_OFF)
  TestStage:Register(ActorSpawn)
  TestStage:Register(AnchoringLoad)
  TestStage:Register(Timer_StartStep02)
  TestStage:Register(Timer_Text_Step02Start)
  TestStage:Register(Timer_ReadyStep02)
  TestStage:Register(Timer_Text_TestStartStep02_off)
  TestStage:Register(Timer_End)
  TestStage:Register(Timer_Text_TestFail_off)
  TestStage:Register(Timer_Text_TestSuccess_off)
  TestStage:Register(Hold_Actor_Step02_01)
  TestStage:Register(Realse_Actor_Step02_01)
  TestStage:Register(Arrow_AncPoint_off_01)
  TestStage:Register(Arrow_Gate_off_01)
  TestStage:Register(Arrow_Arrow2_on_01)
  TestStage:Register(Arrow_Anc_on_01)
  TestStage:Register(Text_Step02Start)
  TestStage:Register(Text_Step02Ready)
  TestStage:Register(Text_TestStartStep02)
  TestStage:Register(Text_Guide_Step02_01)
  TestStage:Register(Text_TestFail)
  TestStage:Register(Text_TestSuccess)
  TestStage:Register(RegGateOpen_Step01)
  TestStage:Register(Timer_SayThree)
  TestStage:Register(Timer_SayTwo)
  TestStage:Register(Timer_SayOne)
  TestStage:Register(NarThree)
  TestStage:Register(NarTwo)
  TestStage:Register(NarOne)
  TestStage:Register(NarEnd)
  TestStage:Register(NarWinGame)
  TestStage:Register(InPutLicense)
  TestStage:Register(Hold_Actor_Fail)
  TestStage:Register(NarTimeIsUP)
  TestStage:Register(NarLostGame)
  TestStage:Register(MessageBox_Step02)
  TestStage:Register(MessageBox_Step03)
  TestStage:Register(TestSuccessEnd)
  TutorialSystem:AddStage(1, TestStage)
end
