require("Resources/Script/ActorStates_Constants.lua")
function SwordAtkAfterDash1State_CounterSword(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_counter_sword_01", 50, 600)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0000", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0025", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function SwordAtkAfterDash2State_CounterSword(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_counter_sword_01", 50, 600)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0001", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0026", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function SwordJumpAtkState_CounterSword(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500)
  state:AddSequence(0, "Resources/Effects/weapon_counter_upper01.seq", "Resources/Sound/bsword_counter.ogg", 500, 5000)
  local index = 0
  local ANIMPARAMLIST_BEGIN = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_BEGIN):SetAnim("R0029", 0, 50, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0033", 0, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
end
function SwordAtkAfterDash3State_CounterSword(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_counter_sword_01", 50, 600)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0002", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0027", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function SwordAtkAfterDash4State_CounterSword(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_6.ogg", "Resources/Sound/voice_girl_attack_4.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_counter_sword_01", 150, 1100)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0003", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0028", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function SwordAtkCounterAttack_CounterSword(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_counter_sword_01", 50, 600)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0030", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0031", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function UseWeapon1State_CounterSwordDash1(state)
  local index = 0
  local ANIMPARAMLIST_BEGIN = index
  index = index + 1
  local ANIMPARAMLIST_LOOP = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_BEGIN):SetAnim("R0024", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_LOOP):SetAnim("R0024", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0004", 0, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
end
function UseWeapon2State_CounterSwordGuard(state)
  local index = 0
  local ANIMPARAMLIST_BEGIN = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_BEGIN):SetAnim("R0005", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0032", 0, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_FRONT):SetAnim("R0008", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_FRONT):SetAnim("R0009", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT):SetAnim("R0010", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_FRONT):SetAnim("R0011", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT):SetAnim("R0012", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_BACK):SetAnim("R0013", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_BACK):SetAnim("R0014", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_BACK):SetAnim("R0015", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("R0005", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function SwordJumpAtkState_CounterSword_retro(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500)
  state:AddSequence(0, "Resources/Effects/125_weapon_eff_jump.seq", "Resources/Sound/bsword_counter.ogg", 500, 5000)
  local index = 0
  local ANIMPARAMLIST_BEGIN = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_BEGIN):SetAnim("R0029", 0, 50, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0033", 0, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
end
function SwordAtkAfterDash1State_CounterSword_retro(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_counter_sword_03", 50, 600)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0000", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0025", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function SwordAtkAfterDash2State_CounterSword_retro(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_counter_sword_03", 50, 600)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0001", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0026", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function SwordAtkAfterDash3State_CounterSword_retro(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_counter_sword_03", 50, 600)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0002", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0027", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function SwordAtkAfterDash4State_CounterSword_retro(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_6.ogg", "Resources/Sound/voice_girl_attack_4.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_counter_sword_03", 150, 1100)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0003", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0028", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function SwordAtkCounterAttack_CounterSword_retro(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_counter_sword_03", 50, 600)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0030", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0031", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
