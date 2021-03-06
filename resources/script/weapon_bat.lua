require("Resources/Script/ActorStates_Constants.lua")
function StandardBatSwordStandAttack_Weak(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(0.8)
  STATE:SetHitStop(250, 350)
  STATE:SetStealthCancel(true)
  STATE:InitLua(40, 0, false, false)
  local range = WEAPON:GetRange()
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_CRITICAL, 200, Power * 0.5 + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 250, -50), MAKEVECTOR3(0, 0, -1), range - 100), 1, 1, false)
  Attack:SetAlwaysCritical(true)
  AddAttack(ATTACKS, Attack)
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_STAND_WEAK, 200, Power * 0.5 + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKEFAN(MAKEVECTOR3(0, 140, -50), MAKEVECTOR2(0, -1), range * 0.4, range * 0.1, range * 0.7, 120), 1, 1, false)
  AddAttack(ATTACKS, Attack)
end
function StandardBatSwordStandAttack_Strong(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(0.8)
  STATE:SetHitStop(450, 650)
  STATE:SetStealthCancel(true)
  STATE:InitLua(40, 200, false, false)
  local range = WEAPON:GetRange()
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_CRITICAL, 400, Power + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 200, 100), MAKEVECTOR3(0, 0, -1), range - 50), 1, 1, false)
  Attack:SetAlwaysCritical(true)
  AddAttack(ATTACKS, Attack)
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_STAND_STRONG, 400, Power + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 200, 100), MAKEVECTOR3(0, 0, -1), 500, 240, 550), 1, 1, false)
  Attack:AddBlowCondition(4000, 2600)
  Attack:SetCameraShakeEnable(true, true, 0)
  Attack:SetCameraShakeSetFactor1(100, 50, 20)
  Attack:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack)
end
function StandardBatSwordStandAttack_Strong1(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0)
  STATE:SetHitStop(450, 650)
  STATE:SetStealthCancel(true)
  STATE:InitLua(1000, 40, 0, false)
  local range = WEAPON:GetRange()
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_CRITICAL, 400, Power + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 250, 0), MAKEVECTOR3(0, 0, -1), range - 100), 1, 1, false)
  Attack:SetAlwaysCritical(true)
  AddAttack(ATTACKS, Attack)
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_STAND_STRONG, 400, Power + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, 0), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.4, range), 1, 1, false)
  Attack:AddBlowCondition(3000, 2000)
  Attack:SetCameraShakeEnable(true, true, 0)
  Attack:SetCameraShakeSetFactor1(100, 50, 20)
  Attack:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack)
end
function StandardBatSwordAttack2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1.5)
  STATE:SetStealthCancel(true)
  STATE:InitLua(700, 300, 40, true)
  local range = WEAPON:GetRange()
  local arrTimes = {}
  arrTimes[1] = 150
  arrTimes[2] = 300
  local index = 1
  for index = 1, 2 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_ATTACK2, arrTimes[index], Power * 0.2 + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.8), 1, 1, false)
    AddAttack(ATTACKS, Attack)
  end
end
function StandardBatSwordAttack2_2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1.5)
  STATE:SetStealthCancel(true)
  STATE:InitLua(700, 1000, 40, true)
  local range = WEAPON:GetRange()
  local arrTimes = {}
  arrTimes[1] = 150
  arrTimes[2] = 300
  local index = 1
  for index = 1, 2 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_ATTACK2, arrTimes[index], Power * 0.35 + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.8), 1, 1, false)
    AddAttack(ATTACKS, Attack)
  end
end
function StandardBatSwordAttack2_3(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1.5)
  STATE:SetStealthCancel(true)
  STATE:InitLua(700, 1300, 40, true)
  local range = WEAPON:GetRange()
  local arrTimes = {}
  arrTimes[1] = 150
  arrTimes[2] = 300
  local index = 1
  for index = 1, 2 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_ATTACK2, arrTimes[index], Power * 0.5 + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.8), 1, 1, false)
    Attack:AddBlowCondition(2000, 1400)
    AddAttack(ATTACKS, Attack)
  end
end
function StandardBatSwordAttack2_4(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1.5)
  STATE:SetStealthCancel(true)
  STATE:InitLua(700, 1200, 40, true)
  local range = WEAPON:GetRange()
  local arrTimes = {}
  arrTimes[1] = 150
  arrTimes[2] = 300
  local index = 1
  for index = 1, 2 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_ATTACK2, arrTimes[index], Power * 0.7 + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.8), 1, 1, false)
    Attack:SetAlwaysCritical(true)
    AddAttack(ATTACKS, Attack)
  end
end
function StandardBatSwordAttack2_5(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1.5)
  STATE:SetStealthCancel(true)
  STATE:InitLua(700, 1600, 40, true)
  local range = WEAPON:GetRange()
  local arrTimes = {}
  arrTimes[1] = 150
  arrTimes[2] = 300
  local index = 1
  for index = 1, 2 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_ATTACK2, arrTimes[index], Power + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.8), 1, 1, false)
    Attack:AddBlowCondition(2000, 1400)
    Attack:SetAlwaysCritical(true)
    AddAttack(ATTACKS, Attack)
  end
end
function StandardBatSwordJumpAttack(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetDrop(200, MAKEVECTOR3(0, -20000, 0))
  STATE:SetStealthCancel(true)
  STATE:InitLua(300, 1100, 40, false)
  local range = WEAPON:GetRange()
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_JUMP_CRITICAL, 300, Power * 1.5 + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 50, -50), MAKEVECTOR3(0, 0, -1), range - 100), 1, 1, false)
  Attack:SetAlwaysCritical(true)
  AddAttack(ATTACKS, Attack)
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_JUMP, 300, Power * 1.9 + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 150, -50), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 1.2, range), 1, 1, false)
  Attack:SetCameraShakeEnable(true, true, 0)
  Attack:SetCameraShakeSetFactor1(100, 50, 20)
  Attack:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack)
end
function FrypanBatSwordStandAttack_Weak(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(0.8)
  STATE:SetHitStop(250, 350)
  STATE:SetStealthCancel(true)
  STATE:InitLua(40, 0, false, false)
  local range = WEAPON:GetRange()
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_CRITICAL, 200, Power * 0.5 + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 250, -50), MAKEVECTOR3(0, 0, -1), range - 100), 1, 1, false)
  Attack:SetAlwaysCritical(true)
  AddAttack(ATTACKS, Attack)
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_STAND_WEAK, 200, Power * 0.5 + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKEFAN(MAKEVECTOR3(0, 140, -50), MAKEVECTOR2(0, -1), range * 0.4, range * 0.1, range * 0.7, 120), 1, 1, false)
  AddAttack(ATTACKS, Attack)
end
function FrypanBatSwordStandAttack_Strong(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(0.8)
  STATE:SetHitStop(450, 650)
  STATE:SetStealthCancel(true)
  STATE:InitLua(40, 200, false, false)
  local range = WEAPON:GetRange()
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_CRITICAL, 400, Power + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 200, 100), MAKEVECTOR3(0, 0, -1), range - 50), 1, 1, false)
  Attack:SetAlwaysCritical(true)
  AddAttack(ATTACKS, Attack)
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_BAT_SWORD_STAND_STRONG, 400, Power + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 200, 100), MAKEVECTOR3(0, 0, -1), 500, 240, 550), 1, 1, false)
  Attack:AddBlowCondition(4000, 2600)
  Attack:SetCameraShakeEnable(true, true, 0)
  Attack:SetCameraShakeSetFactor1(100, 50, 20)
  Attack:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack)
end
function FrypanBatSwordStandAttack_Strong1(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0)
  STATE:SetHitStop(450, 650)
  STATE:SetStealthCancel(true)
  STATE:InitLua(1000, 40, 0, false)
  local range = WEAPON:GetRange()
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_CRITICAL, 400, Power + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 250, 0), MAKEVECTOR3(0, 0, -1), range - 100), 1, 1, false)
  Attack:SetAlwaysCritical(true)
  AddAttack(ATTACKS, Attack)
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_STAND_STRONG, 400, Power + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, 0), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.4, range), 1, 1, false)
  Attack:AddBlowCondition(3000, 2000)
  Attack:SetCameraShakeEnable(true, true, 0)
  Attack:SetCameraShakeSetFactor1(100, 50, 20)
  Attack:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack)
end
function FrypanBatSwordAttack2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1.5)
  STATE:SetStealthCancel(true)
  STATE:InitLua(700, 300, 40, true)
  local range = WEAPON:GetRange()
  local arrTimes = {}
  arrTimes[1] = 150
  arrTimes[2] = 300
  local index = 1
  for index = 1, 2 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2, arrTimes[index], Power * 0.2 + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.8), 1, 1, false)
    AddAttack(ATTACKS, Attack)
  end
end
function FrypanBatSwordAttack2_2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1.5)
  STATE:SetStealthCancel(true)
  STATE:InitLua(700, 1000, 40, true)
  local range = WEAPON:GetRange()
  local arrTimes = {}
  arrTimes[1] = 150
  arrTimes[2] = 300
  local index = 1
  for index = 1, 2 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2, arrTimes[index], Power * 0.35 + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.8), 1, 1, false)
    AddAttack(ATTACKS, Attack)
  end
end
function FrypanBatSwordAttack2_3(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1.5)
  STATE:SetStealthCancel(true)
  STATE:InitLua(700, 1300, 40, true)
  local range = WEAPON:GetRange()
  local arrTimes = {}
  arrTimes[1] = 150
  arrTimes[2] = 300
  local index = 1
  for index = 1, 2 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2, arrTimes[index], Power * 0.5 + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.8), 1, 1, false)
    Attack:AddBlowCondition(2000, 1400)
    AddAttack(ATTACKS, Attack)
  end
end
function FrypanBatSwordAttack2_4(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1.5)
  STATE:SetStealthCancel(true)
  STATE:InitLua(700, 1200, 40, true)
  local range = WEAPON:GetRange()
  local arrTimes = {}
  arrTimes[1] = 150
  arrTimes[2] = 300
  local index = 1
  for index = 1, 2 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2, arrTimes[index], Power * 0.7 + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.8), 1, 1, false)
    Attack:SetAlwaysCritical(true)
    AddAttack(ATTACKS, Attack)
  end
end
function FrypanBatSwordAttack2_5(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1.5)
  STATE:SetStealthCancel(true)
  STATE:InitLua(700, 1600, 40, true)
  local range = WEAPON:GetRange()
  local arrTimes = {}
  arrTimes[1] = 150
  arrTimes[2] = 300
  local index = 1
  for index = 1, 2 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_ATTACK2, arrTimes[index], Power + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.8), 1, 1, false)
    Attack:AddBlowCondition(2000, 1400)
    Attack:SetAlwaysCritical(true)
    AddAttack(ATTACKS, Attack)
  end
end
function FrypanBatSwordJumpAttack(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetDrop(200, MAKEVECTOR3(0, -20000, 0))
  STATE:SetStealthCancel(true)
  STATE:InitLua(300, 1100, 40, false)
  local range = WEAPON:GetRange()
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_JUMP_CRITICAL, 300, Power * 1.5 + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 50, -50), MAKEVECTOR3(0, 0, -1), range - 100), 1, 1, false)
  Attack:SetAlwaysCritical(true)
  AddAttack(ATTACKS, Attack)
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_BAT_SWORD, ATTACKATTRIB_FRYPAN_BAT_SWORD_JUMP, 300, Power * 1.9 + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 150, -50), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 1.2, range), 1, 1, false)
  Attack:SetCameraShakeEnable(true, true, 0)
  Attack:SetCameraShakeSetFactor1(100, 50, 20)
  Attack:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack)
end
