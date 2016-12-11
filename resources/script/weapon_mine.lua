require("Resources/Script/ActorStates_Constants.lua")
require("Resources/Script/Weapon_rocketlauncher.lua")
require("Resources/Script/Weapon_lightningbomberMK2.lua")
require("Resources/Script/Weapon_rescuegunMK2.lua")
function StandardMineLaunch(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/grenade_fire.ogg", 500, 4000)
  STATE:SetWeaponInitLuaFuncName("StandardMineInit")
end
function StandardMineInit()
  GRENADE:InitLua(-4000, 16, 3000, 100, 1)
  GRENADE:SetDamping(0.5, 16, 0.9)
  GRENADE:SetDamageType(2)
  GRENADE:SetCollisionChar(1, true)
  GRENADE:SetSpeedCheck(false, 0)
  GRENADE:SetSequence("Resources/Effects/skill_gunner_electronic_bomb_3.seq", "Resources/Effects/skill_gunner_electronic_bomb_2_ally.seq", "Resources/Effects/skill_gunner_electronic_bomb_2_enemy.seq", "", "")
  GRENADE:SetExplosionSound("Resources/Sound/grenade_explosion.ogg")
  GRENADE:SetExplosionLuaName("StandardMineExplosion")
end
function StandardMineExplosion(damage, range)
  EXPLOSIONATTACK:InitAttack1(WEAPONTYPE_MINE_LAUNCHER, ATTACKATTRIB_MINE_LAUNCHER, 0, damage, 0)
  EXPLOSIONATTACK:InitAttack2(MAKESPHERE(MAKEVECTOR3(POSITION:GetX(), POSITION:GetY(), POSITION:GetZ()), range), 1, 1)
  EXPLOSIONATTACK:AddPushCondition(300, 2000, -5000)
  EXPLOSIONATTACK:SetDamageApplyType(1)
  EXPLOSIONATTACK:SetDamageRates(0.75, 0.5, 0.5)
  EXPLOSIONATTACK:SetExplosionRanges(0.25, 0.5, 0.75)
end
function GrenadeUniqueLaunch(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(100, "Resources/Effects/grenade_summer_night_blast.seq", "Resources/Sound/grenade_fire.ogg", 500, 4000)
  STATE:SetWeaponInitLuaFuncName("GrenadeUniqueInit")
end
function GrenadeUniqueInit()
  GRENADE:InitLua(-4000, 16, 3000, 100, 1)
  GRENADE:SetDamping(0.5, 16, 0.9)
  GRENADE:SetDamageType(2)
  GRENADE:SetCollisionChar(1, true)
  GRENADE:SetSpeedCheck(false, 0)
  GRENADE:SetSequence("Resources/Effects/grenade_summer_night_explosion.seq", "Resources/Effects/grenade_summer_night_bullet.seq", "Resources/Effects/grenade_summer_night_bullet_enemy.seq", "", "")
  GRENADE:SetExplosionSound("Resources/Sound/grenade_explosion.ogg")
  GRENADE:SetExplosionLuaName("GrenadeUniqueExplosion")
end
function GrenadeUniqueExplosion(damage, range)
  EXPLOSIONATTACK:InitAttack1(WEAPONTYPE_MINE_LAUNCHER, ATTACKATTRIB_MINE_LAUNCHER, 0, damage, 0)
  EXPLOSIONATTACK:InitAttack2(MAKESPHERE(MAKEVECTOR3(POSITION:GetX(), POSITION:GetY(), POSITION:GetZ()), range), 1, 1)
  EXPLOSIONATTACK:AddPushCondition(300, 2000, -5000)
  EXPLOSIONATTACK:SetDamageApplyType(1)
  EXPLOSIONATTACK:SetDamageRates(0.75, 0.5, 0.5)
  EXPLOSIONATTACK:SetExplosionRanges(0.25, 0.5, 0.75)
end
function StandardEarthBomber(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750)
  STATE:SetWeaponInitLuaFuncName("StandardEarthInit")
end
function StandardEarthInit()
  GRENADE:InitLua(-4000, 16, 1000, 100, 7)
  GRENADE:SetDamping(0.5, 16, 0.9)
  GRENADE:SetDamageType(0)
  GRENADE:SetCollisionChar(0, true)
  GRENADE:SetSpeedCheck(true, 200)
  GRENADE:SetSequence("Resources/Effects/weapon_earth_bomber_ex.seq", "Resources/Effects/weapon_earth_bomber_throw.seq", "Resources/Effects/weapon_earth_bomber_throw.seq", "Resources/Effects/weapon_earth_bomber_fire.seq", "Resources/Effects/weapon_earth_bomber_fire.seq")
  GRENADE:SetExplosionSound("Resources/Sound/earthbomber_bomb.ogg")
  GRENADE:SetExplosionReadySound("Resources/Sound/Earthbomber_limit.ogg")
  GRENADE:SetExplosionLuaName("StandardEarthExplosion")
end
function StandardEarthExplosion(damage, range)
  EXPLOSIONATTACK:InitAttack1(WEAPONTYPE_EARTH_BOMB, ATTACKATTRIB_EARTH_BOMBER, 0, damage, 0)
  EXPLOSIONATTACK:InitAttack2(MAKESPHERE(MAKEVECTOR3(POSITION:GetX(), POSITION:GetY(), POSITION:GetZ()), range), 1, 1)
  EXPLOSIONATTACK:AddPushCondition(300, 2000, -5000)
  EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2)
  EXPLOSIONATTACK:SetDamageApplyType(2)
  EXPLOSIONATTACK:SetDamageRates(0.75, 0.5, 0.25)
  EXPLOSIONATTACK:SetExplosionRanges(0.4, 0.6, 0.8)
end
function StandardLightningBomber(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750)
  STATE:SetWeaponInitLuaFuncName("StandardLightningInit")
end
function StandardLightningInit()
  GRENADE:InitLua(-4000, 16, 1000, 100, 1)
  GRENADE:SetDamping(0.5, 16, 0.9)
  GRENADE:SetDamageType(0)
  GRENADE:SetCollisionChar(0, true)
  GRENADE:SetSpeedCheck(true, 200)
  GRENADE:SetSequence("Resources/Effects/weapon_Lightning_bomber_ex.seq", "Resources/Effects/weapon_Lightning_bomber_throw.seq", "Resources/Effects/weapon_Lightning_bomber_throw.seq", "Resources/Effects/weapon_Lightning_bomber_fire.seq", "Resources/Effects/weapon_Lightning_bomber_fire.seq")
  GRENADE:SetExplosionSound("Resources/Sound/lightningbomber_bomb.ogg")
  GRENADE:SetExplosionReadySound("Resources/Sound/Earthbomber_limit.ogg")
  GRENADE:SetExplosionLuaName("StandardLightningExplosion")
  GRENADE:SetCollisionRange(MAKECYLINDER(MAKEVECTOR3(0, 200, 0), 700, 900))
end
function StandardLightningExplosion(damage, range)
  EXPLOSIONATTACK:InitAttack1(WEAPONTYPE_LIGHT_BOMB, ATTACKATTRIB_LIGHT_BOMBER, 0, damage, 0)
  EXPLOSIONATTACK:InitAttack2(MAKECYLINDER(MAKEVECTOR3(POSITION:GetX(), POSITION:GetY() + 250, POSITION:GetZ()), 700, 900), 1, 1)
  EXPLOSIONATTACK:AddPushCondition(300, 2000, -5000)
  EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2)
  EXPLOSIONATTACK:SetGaussRandomDamage(0, 167, 100, 1)
  EXPLOSIONATTACK:SetGaussRandomCritical(120)
end
function StandardRescueGunLaunch(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/rescuegun_shot.ogg", 500, 5000)
  STATE:SetWeaponInitLuaFuncName("StandardRescueGunInit")
end
function StandardRescueGunInit()
  GRENADE:InitLua(-4500, 16, 4000, 100, 1)
  GRENADE:SetDamping(0.5, 16, 0.3)
  GRENADE:SetDamageType(0)
  GRENADE:SetCollisionChar(3, false)
  GRENADE:SetSpeedCheck(true, 200)
  GRENADE:SetSequence("Resources/Effects/weapon_resque_fire01.seq", "Resources/Effects/weapon_resque_ball01.seq", "Resources/Effects/weapon_resque_ball01.seq", "Resources/Effects/weapon_resque_ball02.seq", "Resources/Effects/weapon_resque_ball02.seq")
  GRENADE:SetExplosionSound("Resources/Sound/rescuegun_bomb.ogg")
  GRENADE:SetExplosionLuaName("StandardRescueGunExplosion")
  GRENADE:SetAfterActiveCheckChar(true)
  GRENADE:SetRescueCriticalMaxProb(100)
  GRENADE:SetRescueCriticalMinProb(0)
end
function StandardRescueGunExplosion(damage, range)
  EXPLOSIONATTACK:InitAttack1(WEAPONTYPE_RESCUEGUN, ATTACKATTRIB_RESCUEGUN, 0, damage, 0)
  EXPLOSIONATTACK:InitAttack2(MAKESPHERE(MAKEVECTOR3(POSITION:GetX(), POSITION:GetY(), POSITION:GetZ()), range), 1, 1)
  EXPLOSIONATTACK:SetDamageApplyType(0)
  EXPLOSIONATTACK:SetFriendlyDamage(0, 5)
  EXPLOSIONATTACK:SetUiCriticalExplosionAttack(false)
  EXPLOSIONATTACK:SetExceptSentry(true)
  EXPLOSIONATTACK:SetCritical(1.96, 10)
end
function StandardUniqueBomber(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(100, "Resources/Effects/skill_gunner_electronic_bomb_1.seq", "Resources/Sound/earthbomber_shot.ogg", 500, 4750)
  STATE:SetWeaponInitLuaFuncName("StandardUniqueInit")
end
function StandardUniqueInit()
  GRENADE:InitLua(-4000, 16, 1000, 100, 1)
  GRENADE:SetDamping(0.5, 16, 0.9)
  GRENADE:SetDamageType(0)
  GRENADE:SetCollisionChar(0, true)
  GRENADE:SetSpeedCheck(true, 200)
  GRENADE:SetSequence("Resources/Effects/weapon_earth_bomber_ex.seq", "Resources/Effects/weapon_earthbomber_r_throw.seq", "Resources/Effects/weapon_earthbomber_r_throw.seq", "Resources/Effects/weapon_earthbomber_r_fire.seq", "Resources/Effects/weapon_earthbomber_r_fire.seq")
  GRENADE:SetExplosionSound("Resources/Sound/earthbomber_bomb.ogg")
  GRENADE:SetExplosionReadySound("Resources/Sound/Earthbomber_limit.ogg")
  GRENADE:SetExplosionLuaName("StandardUniqueExplosion")
end
function StandardUniqueExplosion(damage, range)
  EXPLOSIONATTACK:InitAttack1(WEAPONTYPE_EARTH_BOMB, ATTACKATTRIB_EARTH_BOMBER, 0, damage, 0)
  EXPLOSIONATTACK:InitAttack2(MAKESPHERE(MAKEVECTOR3(POSITION:GetX(), POSITION:GetY(), POSITION:GetZ()), range), 1, 1)
  EXPLOSIONATTACK:AddPushCondition(300, 2000, -5000)
  EXPLOSIONATTACK:SetFriendlyDamage(0.5, 0.2)
  EXPLOSIONATTACK:SetDamageApplyType(2)
  EXPLOSIONATTACK:SetDamageRates(0.75, 0.5, 0.25)
  EXPLOSIONATTACK:SetExplosionRanges(0.4, 0.6, 0.8)
end