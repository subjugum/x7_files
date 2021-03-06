require("Resources/Script/ActorStates_Constants.lua")
function StandardSigmaBladeJumpDash(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(2)
  STATE:SetStealthCancel(true)
  STATE:SetMoveSpeedRate(0.5)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(550, 0, 0, false)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_JUMPDASH, 200, Power * 0.6, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 0, -100), MAKEVECTOR3(0, 0, -1), range * 1.2, range * 0.7, range * 0.7), 1, 1, false)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 5)
  Attack1:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack1:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack1)
end
function StandardSigmaBladeAfterDash1(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.5)
  STATE:SetMoveBoxMultiplierInTrans(1.3)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(420, 300, 40, true)
  STATE:InitLuaInTrans(750, 300, 40, true)
  STATE:ResetMoveBoxAtSubStateChange(true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 180, Power * 0.2, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 250, Power * 0.4, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  Attack2:AddPushCondition(100, 800, -5000)
  AddAttack(ATTACKS, Attack2)
  Attack3 = CreateCAttack()
  Attack3:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 100, Power * 0.8, AddtionalPower)
  Attack3:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 0), MAKEVECTOR3(0, 0, -1), range * 0.6, range * 0.5, range * 0.6), 1, 1, false)
  Attack3:SetOnlyUseInWeaponChage(true)
  Attack3:AddBlowCondition(1300, 0)
  AddAttack(ATTACKS, Attack3)
  Attack4 = CreateCAttack()
  Attack4:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 440, Power * 1.5, AddtionalPower)
  Attack4:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, -100), MAKEVECTOR3(0, 0, -1), range * 1.1, range * 0.5, range * 1), 1, 1, false)
  Attack4:SetOnlyUseInWeaponChage(true)
  Attack4:AddPushCondition(100, 2000, -5000)
  Attack4:SetCameraShakeEnable(true, true, 0)
  Attack4:SetCameraShakeSetFactor1(200, 50, 5)
  Attack4:SetCameraShakeSetFactor2(200, 100, 2000, 3000)
  Attack4:AddBlowCondition(800, 1500)
  AddAttack(ATTACKS, Attack4)
end
function StandardSigmaBladeAfterDash2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.2)
  STATE:SetMoveBoxMultiplierInTrans(1)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(300, 300, 40, true)
  STATE:InitLuaInTrans(800, 300, 40, true)
  STATE:ResetMoveBoxAtSubStateChange(true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK2, 210, Power, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.95, range * 0.3, range * 0.7), 1, 1, false)
  Attack1:AddBlowCondition(3000, 2500)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 20)
  Attack1:SetCameraShakeSetFactor2(200, 25, 2000, 3000)
  Attack1:SetCritical(1.5, 10)
  Attack1:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 470, Power * 1.3, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, -90), MAKEVECTOR3(0, 0, -1), range * 0.5, range * 0.5, range * 1.2), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(200, 50, 5)
  Attack2:SetCameraShakeSetFactor2(200, 100, 2000, 3000)
  Attack2:SetCameraShakeWhenSuccess(true)
  Attack2:AddBlowCondition(500, 2000)
  AddAttack(ATTACKS, Attack2)
end
function StandardSigmaBladeAfterDash3(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.6)
  STATE:SetMoveBoxMultiplierInTrans(0.5)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(650, 0, 40, true)
  STATE:InitLuaInTrans(1000, 300, 40, true)
  STATE:ResetMoveBoxAtSubStateChange(true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK3, 300, Power, AddtionalPower)
  Attack1:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.6, range * 0.6, range * 1), 1, 1, false)
  Attack1:AddPushCondition(100, 2000, -5000)
  Attack1:AddBlowCondition(1400, 2800)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 500, Power * 1.7, AddtionalPower)
  Attack2:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 100, 0), 200, range * 0.7), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(200, 50, 5)
  Attack2:SetCameraShakeSetFactor2(200, 100, 2000, 3000)
  Attack2:SetCameraShakeWhenSuccess(true)
  Attack2:AddPushCondition(100, 2000, -5000)
  Attack2:AddBlowCondition(2600, 2000)
  AddAttack(ATTACKS, Attack2)
end
function StandardSigmaBladeAfterDash4(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(2)
  STATE:SetMoveBoxMultiplierInTrans(0.8)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:SetOnlyUseInWeaponChange(true)
  STATE:InitLua(800, 100, 40, true)
  STATE:InitLuaInTrans(1000, 250, 40, true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 200, Power * 0.2, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, 70), MAKEVECTOR3(0, 0, -1), range * 0.5, range * 0.8, range * 1), 1, 1, false)
  Attack1:SetOnlyUseInWeaponChage(true)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 50)
  Attack1:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_CRITICAL, 430, Power * 1.2, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, 70), MAKEVECTOR3(0, 0, -1), range * 0.5, range * 0.8, range * 1), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(200, 50, 50)
  Attack2:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack2:AddBlowCondition(2000, 3500)
  AddAttack(ATTACKS, Attack2)
end
function StandardSigmaBladeCounterAttack(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.5)
  STATE:SetMoveBoxMultiplierInTrans(1.85)
  STATE:SetStateMinSp(5)
  STATE:SetSpendSp(0)
  STATE:ResetMoveBoxAtSubStateChange(true)
  STATE:SetStealthCancel(true)
  STATE:InitLua(420, 300, 40, true)
  STATE:InitLuaInTrans(700, 800, 40, true)
  STATE:SetHPAbsorptionPer(0)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK, 200, Power * 1.2, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 100), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.7, range * 1.7), 1, 1, false)
  Attack1:SetOnlyUseInWeaponChage(true)
  Attack1:SetPlaySound(false)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 10)
  Attack1:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack1:SetCritical(1.5, 10)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK, 400, Power * 0.8, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 100), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.7, range * 1.5), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeSetFactor1(200, 50, 50)
  Attack2:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack2:SetPlaySound(false)
  Attack2:SetCritical(1.5, 10)
  AddAttack(ATTACKS, Attack2)
  Attack3 = CreateCAttack()
  Attack3:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_COUNTER_ATTACK, 620, Power * 1.2, AddtionalPower)
  Attack3:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 100), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.7, range * 1.5), 1, 1, false)
  Attack3:SetOnlyUseInWeaponChage(true)
  Attack3:SetCameraShakeEnable(true, true, 0)
  Attack3:SetCameraShakeSetFactor1(200, 50, 50)
  Attack3:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack3:AddBlowCondition(500, 2000)
  Attack3:SetCritical(1.5, 10)
  AddAttack(ATTACKS, Attack3)
  Attack4 = CreateCAttack()
  Attack4:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 180, Power * 0.2, AddtionalPower)
  Attack4:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  AddAttack(ATTACKS, Attack4)
  Attack5 = CreateCAttack()
  Attack5:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 250, Power * 0.4, AddtionalPower)
  Attack5:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  Attack5:AddPushCondition(100, 800, -5000)
  AddAttack(ATTACKS, Attack5)
end
function StandardSigmaBladeWeaponChange(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetHPAbsorptionPer(0)
  STATE:SetHPAbsorptionAfterStunMin(0)
  STATE:SetHPAbsorptionAfterStunMax(0)
  STATE:SetStateMinSp(20)
  STATE:SetSpendSp(0)
  STATE:InitLua(500, 0, false)
  STATE:InitLuaInTrans(500, 0, false)
  STATE:SetCoolTime(1500)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK4, 90, Power * 0.5, AddtionalPower)
  Attack1:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 200, 0), 340, range * 1.2), 1, 1, false)
  Attack1:AddBlowCondition(1450, 2800)
  AddAttack(ATTACKS, Attack1)
end
function StandardCogWheelSigmaBladeJumpDash(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(2)
  STATE:SetStealthCancel(true)
  STATE:SetMoveSpeedRate(0.5)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(550, 0, 0, false)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_JUMPDASH, 200, Power * 0.6, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 0, -100), MAKEVECTOR3(0, 0, -1), range * 1.2, range * 0.7, range * 0.7), 1, 1, false)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 5)
  Attack1:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack1:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack1)
end
function StandardCogWheelSigmaBladeAfterDash1(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.5)
  STATE:SetMoveBoxMultiplierInTrans(1.3)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(420, 300, 40, true)
  STATE:InitLuaInTrans(750, 300, 40, true)
  STATE:ResetMoveBoxAtSubStateChange(true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK1, 180, Power * 0.2, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK1, 250, Power * 0.4, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  Attack2:AddPushCondition(100, 800, -5000)
  AddAttack(ATTACKS, Attack2)
  Attack3 = CreateCAttack()
  Attack3:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 100, Power * 0.8, AddtionalPower)
  Attack3:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 0), MAKEVECTOR3(0, 0, -1), range * 0.6, range * 0.5, range * 0.6), 1, 1, false)
  Attack3:SetOnlyUseInWeaponChage(true)
  Attack3:AddBlowCondition(1300, 0)
  AddAttack(ATTACKS, Attack3)
  Attack4 = CreateCAttack()
  Attack4:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 440, Power * 1.5, AddtionalPower)
  Attack4:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, -100), MAKEVECTOR3(0, 0, -1), range * 1.1, range * 0.5, range * 1), 1, 1, false)
  Attack4:SetOnlyUseInWeaponChage(true)
  Attack4:AddPushCondition(100, 2000, -5000)
  Attack4:SetCameraShakeEnable(true, true, 0)
  Attack4:SetCameraShakeSetFactor1(200, 50, 5)
  Attack4:SetCameraShakeSetFactor2(200, 100, 2000, 3000)
  Attack4:AddBlowCondition(800, 1500)
  AddAttack(ATTACKS, Attack4)
end
function StandardCogWheelSigmaBladeAfterDash2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.2)
  STATE:SetMoveBoxMultiplierInTrans(1)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(300, 300, 40, true)
  STATE:InitLuaInTrans(800, 300, 40, true)
  STATE:ResetMoveBoxAtSubStateChange(true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK2, 210, Power, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.95, range * 0.3, range * 0.7), 1, 1, false)
  Attack1:AddBlowCondition(3000, 2500)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 20)
  Attack1:SetCameraShakeSetFactor2(200, 25, 2000, 3000)
  Attack1:SetCritical(1.5, 10)
  Attack1:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 470, Power * 1.3, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, -90), MAKEVECTOR3(0, 0, -1), range * 0.5, range * 0.5, range * 1.2), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(200, 50, 5)
  Attack2:SetCameraShakeSetFactor2(200, 100, 2000, 3000)
  Attack2:SetCameraShakeWhenSuccess(true)
  Attack2:AddBlowCondition(500, 2000)
  AddAttack(ATTACKS, Attack2)
end
function StandardCogWheelSigmaBladeAfterDash3(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.6)
  STATE:SetMoveBoxMultiplierInTrans(0.5)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(650, 0, 40, true)
  STATE:InitLuaInTrans(1000, 300, 40, true)
  STATE:ResetMoveBoxAtSubStateChange(true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK3, 300, Power, AddtionalPower)
  Attack1:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.6, range * 0.6, range * 1), 1, 1, false)
  Attack1:AddPushCondition(100, 2000, -5000)
  Attack1:AddBlowCondition(1400, 2800)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 500, Power * 1.7, AddtionalPower)
  Attack2:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 100, 0), 200, range * 0.7), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(200, 50, 5)
  Attack2:SetCameraShakeSetFactor2(200, 100, 2000, 3000)
  Attack2:SetCameraShakeWhenSuccess(true)
  Attack2:AddPushCondition(100, 2000, -5000)
  Attack2:AddBlowCondition(2600, 2000)
  AddAttack(ATTACKS, Attack2)
end
function StandardCogWheelSigmaBladeAfterDash4(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(2)
  STATE:SetMoveBoxMultiplierInTrans(0.8)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:SetOnlyUseInWeaponChange(true)
  STATE:InitLua(800, 100, 40, true)
  STATE:InitLuaInTrans(1000, 250, 40, true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 200, Power * 0.2, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, 70), MAKEVECTOR3(0, 0, -1), range * 0.5, range * 0.8, range * 1), 1, 1, false)
  Attack1:SetOnlyUseInWeaponChage(true)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 50)
  Attack1:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_CRITICAL, 430, Power * 1.2, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, 70), MAKEVECTOR3(0, 0, -1), range * 0.5, range * 0.8, range * 1), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(200, 50, 50)
  Attack2:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack2:AddBlowCondition(2000, 3500)
  AddAttack(ATTACKS, Attack2)
end
function StandardCogWheelSigmaBladeCounterAttack(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.5)
  STATE:SetMoveBoxMultiplierInTrans(1.85)
  STATE:SetStateMinSp(5)
  STATE:SetSpendSp(0)
  STATE:ResetMoveBoxAtSubStateChange(true)
  STATE:SetStealthCancel(true)
  STATE:InitLua(420, 300, 40, true)
  STATE:InitLuaInTrans(700, 800, 40, true)
  STATE:SetHPAbsorptionPer(0)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK, 200, Power * 1.2, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 100), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.7, range * 1.7), 1, 1, false)
  Attack1:SetOnlyUseInWeaponChage(true)
  Attack1:SetPlaySound(false)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 10)
  Attack1:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack1:SetCritical(1.5, 10)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK, 400, Power * 0.8, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 100), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.7, range * 1.5), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeSetFactor1(200, 50, 50)
  Attack2:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack2:SetPlaySound(false)
  Attack2:SetCritical(1.5, 10)
  AddAttack(ATTACKS, Attack2)
  Attack3 = CreateCAttack()
  Attack3:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_COUNTER_ATTACK, 620, Power * 1.2, AddtionalPower)
  Attack3:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 100), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.7, range * 1.5), 1, 1, false)
  Attack3:SetOnlyUseInWeaponChage(true)
  Attack3:SetCameraShakeEnable(true, true, 0)
  Attack3:SetCameraShakeSetFactor1(200, 50, 50)
  Attack3:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack3:AddBlowCondition(500, 2000)
  Attack3:SetCritical(1.5, 10)
  AddAttack(ATTACKS, Attack3)
  Attack4 = CreateCAttack()
  Attack4:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 180, Power * 0.2, AddtionalPower)
  Attack4:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  AddAttack(ATTACKS, Attack4)
  Attack5 = CreateCAttack()
  Attack5:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_SIGMA_BLADE_ATTACK1, 250, Power * 0.4, AddtionalPower)
  Attack5:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  Attack5:AddPushCondition(100, 800, -5000)
  AddAttack(ATTACKS, Attack5)
end
function StandardCogWheelSigmaBladeWeaponChange(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetHPAbsorptionPer(0)
  STATE:SetHPAbsorptionAfterStunMin(0)
  STATE:SetHPAbsorptionAfterStunMax(0)
  STATE:SetStateMinSp(20)
  STATE:SetSpendSp(0)
  STATE:InitLua(500, 0, false)
  STATE:InitLuaInTrans(500, 0, false)
  STATE:SetCoolTime(1500)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_COGWHEEL_SIGMA_BLADE_ATTACK4, 90, Power * 0.5, AddtionalPower)
  Attack1:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 200, 0), 340, range * 1.2), 1, 1, false)
  Attack1:AddBlowCondition(1450, 2800)
  AddAttack(ATTACKS, Attack1)
end
function GlitchJoySigmaBladeJumpDash(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(2)
  STATE:SetStealthCancel(true)
  STATE:SetMoveSpeedRate(0.5)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(550, 0, 0, false)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_JUMPDASH, 200, Power * 0.6, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 0, -100), MAKEVECTOR3(0, 0, -1), range * 1.2, range * 0.7, range * 0.7), 1, 1, false)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 5)
  Attack1:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack1:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack1)
end
function GlitchJoySigmaBladeAfterDash1(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.5)
  STATE:SetMoveBoxMultiplierInTrans(1.3)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(420, 300, 40, true)
  STATE:InitLuaInTrans(750, 300, 40, true)
  STATE:ResetMoveBoxAtSubStateChange(true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 180, Power * 0.2, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 250, Power * 0.4, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  Attack2:AddPushCondition(100, 800, -5000)
  AddAttack(ATTACKS, Attack2)
  Attack3 = CreateCAttack()
  Attack3:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 100, Power * 0.8, AddtionalPower)
  Attack3:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 0), MAKEVECTOR3(0, 0, -1), range * 0.6, range * 0.5, range * 0.6), 1, 1, false)
  Attack3:SetOnlyUseInWeaponChage(true)
  Attack3:AddBlowCondition(1300, 0)
  AddAttack(ATTACKS, Attack3)
  Attack4 = CreateCAttack()
  Attack4:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 440, Power * 1.5, AddtionalPower)
  Attack4:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, -100), MAKEVECTOR3(0, 0, -1), range * 1.1, range * 0.5, range * 1), 1, 1, false)
  Attack4:SetOnlyUseInWeaponChage(true)
  Attack4:AddPushCondition(100, 2000, -5000)
  Attack4:SetCameraShakeEnable(true, true, 0)
  Attack4:SetCameraShakeSetFactor1(200, 50, 5)
  Attack4:SetCameraShakeSetFactor2(200, 100, 2000, 3000)
  Attack4:AddBlowCondition(800, 1500)
  AddAttack(ATTACKS, Attack4)
end
function GlitchJoySigmaBladeAfterDash2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.2)
  STATE:SetMoveBoxMultiplierInTrans(1)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(300, 300, 40, true)
  STATE:InitLuaInTrans(800, 300, 40, true)
  STATE:ResetMoveBoxAtSubStateChange(true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK2, 210, Power, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.95, range * 0.3, range * 0.7), 1, 1, false)
  Attack1:AddBlowCondition(3000, 2500)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 20)
  Attack1:SetCameraShakeSetFactor2(200, 25, 2000, 3000)
  Attack1:SetCritical(1.5, 10)
  Attack1:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK2, 470, Power * 1.3, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, -90), MAKEVECTOR3(0, 0, -1), range * 0.5, range * 0.5, range * 1.2), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(200, 50, 5)
  Attack2:SetCameraShakeSetFactor2(200, 100, 2000, 3000)
  Attack2:SetCameraShakeWhenSuccess(true)
  Attack2:AddBlowCondition(500, 2000)
  AddAttack(ATTACKS, Attack2)
end
function GlitchJoySigmaBladeAfterDash3(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.6)
  STATE:SetMoveBoxMultiplierInTrans(0.5)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:InitLua(650, 0, 40, true)
  STATE:InitLuaInTrans(1000, 300, 40, true)
  STATE:ResetMoveBoxAtSubStateChange(true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK3, 300, Power, AddtionalPower)
  Attack1:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 250, 0), 100, range * 0.6, range * 0.6, range * 1), 1, 1, false)
  Attack1:AddPushCondition(100, 2000, -5000)
  Attack1:AddBlowCondition(1400, 2800)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 500, Power * 1.7, AddtionalPower)
  Attack2:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 100, 0), 200, range * 0.7), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(200, 50, 5)
  Attack2:SetCameraShakeSetFactor2(200, 100, 2000, 3000)
  Attack2:SetCameraShakeWhenSuccess(true)
  Attack2:AddPushCondition(100, 2000, -5000)
  Attack2:AddBlowCondition(2600, 2000)
  AddAttack(ATTACKS, Attack2)
end
function GlitchJoySigmaBladeAfterDash4(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(2)
  STATE:SetMoveBoxMultiplierInTrans(0.8)
  STATE:SetStealthCancel(true)
  STATE:SetHPAbsorptionPer(0)
  STATE:SetOnlyUseInWeaponChange(true)
  STATE:InitLua(800, 100, 40, true)
  STATE:InitLuaInTrans(1000, 250, 40, true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 200, Power * 0.2, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, 70), MAKEVECTOR3(0, 0, -1), range * 0.5, range * 0.8, range * 1), 1, 1, false)
  Attack1:SetOnlyUseInWeaponChage(true)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 50)
  Attack1:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_CRITICAL, 430, Power * 1.2, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, 70), MAKEVECTOR3(0, 0, -1), range * 0.5, range * 0.8, range * 1), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(200, 50, 50)
  Attack2:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack2:AddBlowCondition(2000, 3500)
  AddAttack(ATTACKS, Attack2)
end
function GlitchJoySigmaBladeCounterAttack(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(0.5)
  STATE:SetMoveBoxMultiplierInTrans(1.85)
  STATE:SetStateMinSp(5)
  STATE:SetSpendSp(0)
  STATE:ResetMoveBoxAtSubStateChange(true)
  STATE:SetStealthCancel(true)
  STATE:InitLua(420, 300, 40, true)
  STATE:InitLuaInTrans(700, 800, 40, true)
  STATE:SetHPAbsorptionPer(0)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK, 200, Power * 1.2, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 100), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.7, range * 1.7), 1, 1, false)
  Attack1:SetOnlyUseInWeaponChage(true)
  Attack1:SetPlaySound(false)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(200, 50, 10)
  Attack1:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack1:SetCritical(1.5, 10)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK, 400, Power * 0.8, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 100), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.7, range * 1.5), 1, 1, false)
  Attack2:SetOnlyUseInWeaponChage(true)
  Attack2:SetCameraShakeSetFactor1(200, 50, 50)
  Attack2:SetCameraShakeSetFactor2(0, 20, 2000, 3000)
  Attack2:SetPlaySound(false)
  Attack2:SetCritical(1.5, 10)
  AddAttack(ATTACKS, Attack2)
  Attack3 = CreateCAttack()
  Attack3:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_COUNTER_ATTACK, 620, Power * 1.2, AddtionalPower)
  Attack3:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 180, 100), MAKEVECTOR3(0, 0, -1), range * 0.4, range * 0.7, range * 1.5), 1, 1, false)
  Attack3:SetOnlyUseInWeaponChage(true)
  Attack3:SetCameraShakeEnable(true, true, 0)
  Attack3:SetCameraShakeSetFactor1(200, 50, 50)
  Attack3:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack3:AddBlowCondition(500, 2000)
  Attack3:SetCritical(1.5, 10)
  AddAttack(ATTACKS, Attack3)
  Attack4 = CreateCAttack()
  Attack4:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 180, Power * 0.2, AddtionalPower)
  Attack4:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  AddAttack(ATTACKS, Attack4)
  Attack5 = CreateCAttack()
  Attack5:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK1, 250, Power * 0.4, AddtionalPower)
  Attack5:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 210, 80), MAKEVECTOR3(0, 0, -1), range * 0.7, range * 0.3, range * 0.65), 1, 1, false)
  Attack5:AddPushCondition(100, 800, -5000)
  AddAttack(ATTACKS, Attack5)
end
function GlitchJoySigmaBladeWeaponChange(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetHPAbsorptionPer(0)
  STATE:SetHPAbsorptionAfterStunMin(0)
  STATE:SetHPAbsorptionAfterStunMax(0)
  STATE:SetStateMinSp(20)
  STATE:SetSpendSp(0)
  STATE:InitLua(500, 0, false)
  STATE:InitLuaInTrans(500, 0, false)
  STATE:SetCoolTime(1500)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SIGMA_BLADE, ATTACKATTRIB_GLITCHJOY_SIGMA_BLADE_ATTACK4, 90, Power * 0.5, AddtionalPower)
  Attack1:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 200, 0), 340, range * 1.2), 1, 1, false)
  Attack1:AddBlowCondition(1450, 2800)
  AddAttack(ATTACKS, Attack1)
end
