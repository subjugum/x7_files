require("Resources/Script/AIDef.lua")
require("Resources/Script/AIActor_Common.lua")
function TypeHMG_Captain_Init()
  TEAM_ALPHA = 1
  TEAM_BETA = 2
  AIActor:SetTeamByID(TEAM_BETA)
  AIActor:SetBaseHP(65000)
  AIActor:SetBaseMoveSpeedMax(1000)
  AIActor:SetOrigBoundWidth(200)
  AIActor:SetOrigBoundHeight(320)
  AIActor:SetScale(2, 2, 2)
  AIActor:SetSceneFileName("Resources/Model/Character/male_bip.scn")
  AIActor:SetAiActorHpRate(0.75)
  AIActor:SetAiActorNamed(true)
end
function TypeHMG_Captain_CostumeSetting()
  AIActor:SetCostume(1010021, 0)
  AIActor:SetCostume(1020042, 0)
  AIActor:SetCostume(1030040, 0)
  AIActor:SetCostume(1040039, 0)
  AIActor:SetCostume(1050039, 0)
  AIActor:SetCostume(1060053, 0)
  AIActor:SetAlwaysShowHPBar(true)
  AIActor:SetShowHPBar(true)
  AIActor:SetTimeToSeeingHPBar(1500)
  AIActor:SetTimeToFadeOutHPBar(1000)
end
function TypeHMG_Captain_WeaponSetting()
  AIActor:SetWeapon(2020001, 0)
end
function TypeHMG_Captain_AIActorSetting()
  Common_AddJumpAIActorState()
  Common_AddFallAIActorState()
  Common_AddDownAIActorState()
  Common_AddStandUpAIActorState()
  Common_AddBoundBlowAIActorState()
  Common_AddDownDamageAIActorState()
  Common_AddCounterAttackDamage()
  Common_AddIdleState()
  Common_AddDodgeLeftAIActorState()
  Common_AddDodgeRightAIActorState()
  TypeHMG_Captain_AddDeathAIActorState()
  TypeHMG_Captain_AddNormalAIActorState()
  TypeHMG_Captain_AddRunAIActorState()
  TypeHMG_Captain_AddDamageAIActorState()
  TypeHMG_Captain_AddAttackAIActorState()
  AIActor:ChangeAIActorState(AASTATE_NORMAL)
end
function TypeHMG_Captain_AddNormalAIActorState()
  local state = StateFactory:GetNormalAIActorState()
  AIActor:AddAIActorState(AASTATE_NORMAL, state)
  state:SetNextStateID(AAINPUT_RUN, AASTATE_RUN)
  state:SetNextStateID(AAINPUT_JUMP, AASTATE_JUMP)
  state:SetNextStateID(AAINPUT_FALL, AASTATE_FALL)
  state:SetNextStateID(AAINPUT_BLOW, AASTATE_BLOW)
  state:SetNextStateID(AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE)
  state:SetNextStateID(AAINPUT_DEATH, AASTATE_DEATH)
  state:SetNextStateID(AAINPUT_ATTACK1, AASTATE_ATTACK1)
  state:SetNextStateID(AAINPUT_STUN, AASTATE_STUN)
  state:SetNextStateID(AAINPUT_DODGE_LEFT, AASTATE_DODGE_LEFT)
  state:SetNextStateID(AAINPUT_DODGE_RIGHT, AASTATE_DODGE_RIGHT)
  local index = 0
  ANIMPARAMLIST_NORMAL = index
  index = index + 1
  ANIMPARAMLIST_TOTAL = index
  index = index + 1
  local animParam
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0002", 0, 1000, 0, true, 1, true)
  state:RegisterAnimParam(ANIMPARAMLIST_NORMAL, animParam)
end
function TypeHMG_Captain_AddRunAIActorState()
  local state = StateFactory:GetRunAIActorState()
  AIActor:AddAIActorState(AASTATE_RUN, state)
  state:SetNextStateID(AAINPUT_NORMAL, AASTATE_NORMAL)
  state:SetNextStateID(AAINPUT_JUMP, AASTATE_JUMP)
  state:SetNextStateID(AAINPUT_FALL, AASTATE_FALL)
  state:SetNextStateID(AAINPUT_BLOW, AASTATE_BLOW)
  state:SetNextStateID(AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE)
  state:SetNextStateID(AAINPUT_DEATH, AASTATE_DEATH)
  state:SetNextStateID(AAINPUT_ATTACK1, AASTATE_ATTACK1)
  state:SetNextStateID(AAINPUT_STUN, AASTATE_STUN)
  state:SetNextStateID(AAINPUT_DODGE_LEFT, AASTATE_DODGE_LEFT)
  state:SetNextStateID(AAINPUT_DODGE_RIGHT, AASTATE_DODGE_RIGHT)
  local index = 0
  ANIMPARAMLIST_UPPER_FRONT = index
  index = index + 1
  ANIMPARAMLIST_UPPER_LEFT_FRONT = index
  index = index + 1
  ANIMPARAMLIST_UPPER_LEFT = index
  index = index + 1
  ANIMPARAMLIST_UPPER_LEFT_BACK = index
  index = index + 1
  ANIMPARAMLIST_UPPER_RIGHT_FRONT = index
  index = index + 1
  ANIMPARAMLIST_UPPER_RIGHT = index
  index = index + 1
  ANIMPARAMLIST_UPPER_RIGHT_BACK = index
  index = index + 1
  ANIMPARAMLIST_UPPER_BACK = index
  index = index + 1
  ANIMPARAMLIST_LOWER_FRONT = index
  index = index + 1
  ANIMPARAMLIST_LOWER_LEFT_FRONT = index
  index = index + 1
  ANIMPARAMLIST_LOWER_LEFT = index
  index = index + 1
  ANIMPARAMLIST_LOWER_LEFT_BACK = index
  index = index + 1
  ANIMPARAMLIST_LOWER_RIGHT_FRONT = index
  index = index + 1
  ANIMPARAMLIST_LOWER_RIGHT = index
  index = index + 1
  ANIMPARAMLIST_LOWER_RIGHT_BACK = index
  index = index + 1
  ANIMPARAMLIST_LOWER_BACK = index
  index = index + 1
  ANIMPARAMLIST_TOTAL = index
  index = index + 1
  local animParam
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0018", 0, 2000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_UPPER_FRONT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0018", 0, 2000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_UPPER_LEFT_FRONT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0018", 0, 2000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_UPPER_LEFT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0018", 0, 2000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_UPPER_LEFT_BACK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0018", 0, 2000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_UPPER_RIGHT_FRONT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0018", 0, 2000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_UPPER_RIGHT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0018", 0, 2000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_UPPER_RIGHT_BACK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0018", 0, 2000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_UPPER_BACK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0018", 0, 1000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_LOWER_FRONT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0019", 0, 1000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_LOWER_LEFT_FRONT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("D0029", 0, 1000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_LOWER_LEFT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0024", 0, 1000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_LOWER_LEFT_BACK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0021", 0, 1000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_LOWER_RIGHT_FRONT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0022", 0, 1000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_LOWER_RIGHT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0025", 0, 1000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_LOWER_RIGHT_BACK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0023", 0, 1000, 0, true, 1, false)
  state:RegisterAnimParam(ANIMPARAMLIST_LOWER_BACK, animParam)
end
function TypeHMG_Captain_AddDamageAIActorState()
  local state = StateFactory:GetDamageAIActorState()
  AIActor:AddAIActorState(AASTATE_DAMAGE, state)
  state:SetNextStateID(AAINPUT_NORMAL, AASTATE_NORMAL)
  state:SetNextStateID(AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE)
  state:SetNextStateID(AAINPUT_DEATH, AASTATE_DEATH)
  state:SetNextStateID(AAINPUT_STUN, AASTATE_STUN)
  state:SetNextStateID(AAINPUT_BLOW, AASTATE_BLOW)
  local index = 0
  ANIMPARAMLIST_FRONT = index
  index = index + 1
  ANIMPARAMLIST_BACK = index
  index = index + 1
  ANIMPARAMLIST_LEFT = index
  index = index + 1
  ANIMPARAMLIST_RIGHT = index
  index = index + 1
  ANIMPARAMLIST_FRONT_WEAK = index
  index = index + 1
  ANIMPARAMLIST_BACK_WEAK = index
  index = index + 1
  ANIMPARAMLIST_LEFT_WEAK = index
  index = index + 1
  ANIMPARAMLIST_RIGHT_WEAK = index
  index = index + 1
  ANIMPARAMLIST_TOTAL = index
  index = index + 1
  local animParam
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00016", 0, 0, 0, true, 1, true)
  state:RegisterAnimParam(ANIMPARAMLIST_FRONT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00017", 0, 0, 0, false, 1, true)
  state:RegisterAnimParam(ANIMPARAMLIST_BACK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00018", 0, 0, 0, false, 1, true)
  state:RegisterAnimParam(ANIMPARAMLIST_LEFT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00019", 0, 0, 0, false, 1, true)
  state:RegisterAnimParam(ANIMPARAMLIST_RIGHT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00016", 0, 0, 0, false, 0.05, true)
  state:RegisterAnimParam(ANIMPARAMLIST_FRONT_WEAK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00017", 0, 0, 0, false, 0.05, true)
  state:RegisterAnimParam(ANIMPARAMLIST_BACK_WEAK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00018", 0, 0, 0, false, 0.05, true)
  state:RegisterAnimParam(ANIMPARAMLIST_LEFT_WEAK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00019", 0, 0, 0, false, 0.05, true)
  state:RegisterAnimParam(ANIMPARAMLIST_RIGHT_WEAK, animParam)
  Common_AddDefaultAILowerStates(state)
end
function TypeHMG_Captain_AddAttackAIActorState()
  local state = StateFactory:GetHMGAttackAIActorState()
  AIActor:AddAIActorState(AASTATE_ATTACK1, state)
  state:SetNextStateID(AAINPUT_NORMAL, AASTATE_NORMAL)
  state:SetNextStateID(AAINPUT_FALL, AASTATE_FALL)
  state:SetNextStateID(AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE)
  state:SetNextStateID(AAINPUT_DEATH, AASTATE_DEATH)
  state:SetNextStateID(AAINPUT_STUN, AASTATE_STUN)
  state:SetNextStateID(AAINPUT_BLOW, AASTATE_BLOW)
  state:SetNextStateID(AAINPUT_DODGE_LEFT, AASTATE_DODGE_LEFT)
  state:SetNextStateID(AAINPUT_DODGE_RIGHT, AASTATE_DODGE_RIGHT)
  state:InitHMGAttackAIActorState(750, 3000, 750, 150)
  state:RegisterSound("Resources/Sound/hmg_fire_start.ogg", "HW_Fire_Dummy", 250, 7500)
  StateFactory:AddHMGNormalAttacks(state, 5, 150, 0.06)
  local index = 0
  ANIMPARAMLIST_BEGIN = index
  index = index + 1
  ANIMPARAMLIST_TOTAL = index
  index = index + 1
  local animParam
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0001", 0, 200, 0, false, 1, true)
  state:RegisterAnimParam(ANIMPARAMLIST_BEGIN, animParam)
  local animBlender = state:GetAnimBlender()
  animParam = StateFactory:GetAnimParam()
  animParam:SetBlendingAnim("F0003", "F0004", 0, 500, 0, true, 1, true)
  animBlender:AddAnimParam(ALSTATE_NORMAL, true, animParam)
  animBlender:AddAnimParam(ALSTATE_RUN, true, animParam)
  animBlender:AddAnimParam(ALSTATE_JUMP, true, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetBlendingAnim("F0005", "F0004", 0, 500, 0, true, 1, true)
  animBlender:AddAnimParam(ALSTATE_NORMAL, false, animParam)
  animBlender:AddAnimParam(ALSTATE_RUN, false, animParam)
  animBlender:AddAnimParam(ALSTATE_JUMP, false, animParam)
  TypeHMG_Captain_AddAttackAILowerStates(state)
end
function TypeHMG_Captain_AddAttackAILowerStates(state)
  TypeHMG_Captain_AddAttackNormalLowerState(state)
  TypeHMG_Captain_AddAttackRunLowerState(state)
  Common_AddJumpLowerState(state)
end
function TypeHMG_Captain_AddAttackNormalLowerState(state)
  local lowerState = StateFactory:GetNormalAILowerState()
  state:AddLowerState(ALSTATE_NORMAL, lowerState)
  lowerState:SetNextStateID(ALINPUT_RUN, ALSTATE_RUN)
  lowerState:SetNextStateID(ALINPUT_JUMP, ALSTATE_JUMP)
  local index = 0
  ANIMPARAMLIST_NORMAL = index
  index = index + 1
  ANIMPARAMLIST_TOTAL = index
  index = index + 1
  local animParam
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0017", 0, 500, 0, true, 1, true)
  lowerState:RegisterAnimParam(ANIMPARAMLIST_NORMAL, animParam)
end
function TypeHMG_Captain_AddAttackRunLowerState(state)
  local lowerState = StateFactory:GetRunAILowerState()
  state:AddLowerState(ALSTATE_RUN, lowerState)
  lowerState:InitRunAILowerState(true)
  lowerState:SetNextStateID(ALINPUT_NORMAL, ALSTATE_NORMAL)
  lowerState:SetNextStateID(ALINPUT_JUMP, ALSTATE_JUMP)
  local index = 0
  ANIMPARAMLIST_FRONT = index
  index = index + 1
  ANIMPARAMLIST_LEFT_FRONT = index
  index = index + 1
  ANIMPARAMLIST_LEFT = index
  index = index + 1
  ANIMPARAMLIST_LEFT_BACK = index
  index = index + 1
  ANIMPARAMLIST_RIGHT_FRONT = index
  index = index + 1
  ANIMPARAMLIST_RIGHT = index
  index = index + 1
  ANIMPARAMLIST_RIGHT_BACK = index
  index = index + 1
  ANIMPARAMLIST_BACK = index
  index = index + 1
  ANIMPARAMLIST_TOTAL = index
  index = index + 1
  local animParam
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0008", 0, 500, 0, true, 1, true)
  lowerState:RegisterAnimParam(ANIMPARAMLIST_FRONT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0009", 0, 500, 0, true, 1, true)
  lowerState:RegisterAnimParam(ANIMPARAMLIST_LEFT_FRONT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0010", 0, 500, 0, true, 1, true)
  lowerState:RegisterAnimParam(ANIMPARAMLIST_LEFT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0014", 0, 500, 0, true, 1, true)
  lowerState:RegisterAnimParam(ANIMPARAMLIST_LEFT_BACK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0011", 0, 500, 0, true, 1, true)
  lowerState:RegisterAnimParam(ANIMPARAMLIST_RIGHT_FRONT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0012", 0, 500, 0, true, 1, true)
  lowerState:RegisterAnimParam(ANIMPARAMLIST_RIGHT, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0015", 0, 500, 0, true, 1, true)
  lowerState:RegisterAnimParam(ANIMPARAMLIST_RIGHT_BACK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("F0013", 0, 500, 0, true, 1, true)
  lowerState:RegisterAnimParam(ANIMPARAMLIST_BACK, animParam)
end
function TypeHMG_Captain_AddDeathAIActorState()
  local state = StateFactory:GetDeathAIActorState()
  AIActor:AddAIActorState(AASTATE_DEATH, state)
  local index = 0
  DEATH_NULL = index
  index = index + 1
  DEATH_NORMAL_WEAK = index
  index = index + 1
  DEATH_NORMAL_STRONG = index
  index = index + 1
  DEATH_BLOW = index
  index = index + 1
  DEATH_BOUNDBLOW = index
  index = index + 1
  state:RegisterSequence(1, "Resources/Effects/dead_eff.seq", "", 1, 0)
  local index = 0
  ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK = index
  index = index + 1
  ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG = index
  index = index + 1
  ANIMPARAMLIST_FALLDOWN_BLOW = index
  index = index + 1
  ANIMPARAMLIST_FALLDOWN_BOUNDBLOW = index
  index = index + 1
  ANIMPARAMLIST_LIEDOWN_BOUNDBLOW = index
  index = index + 1
  ANIMPARAMLIST_TOTAL = index
  index = index + 1
  local animParam
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00030", 0, 0, 0, false, 1.3, true)
  state:RegisterAnimParam(ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00069", 0, 0, 0, false, 1, true)
  state:RegisterAnimParam(ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00024", 0, 500, 0, false, 1.5, true)
  state:RegisterAnimParam(ANIMPARAMLIST_FALLDOWN_BLOW, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00071", 0, 500, 0, true, 1, true)
  state:RegisterAnimParam(ANIMPARAMLIST_FALLDOWN_BOUNDBLOW, animParam)
  animParam = StateFactory:GetAnimParam()
  animParam:SetAnim("00072", 0, 500, 0, false, 1, true)
  state:RegisterAnimParam(ANIMPARAMLIST_LIEDOWN_BOUNDBLOW, animParam)
end
