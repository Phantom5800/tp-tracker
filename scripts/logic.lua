function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count >= amount
  end
end

function hasDamagingItem()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Bomb_Bag", 1)
          or has("Iron_Boots")
          or has("Shadow_Crystal")
          or has("Spinner")
end

function hasSword()
  return has("Progressive_Sword_1")
          or has("Progressive_Sword_2")
          or has("Progressive_Sword_3")
          or has("Progressive_Sword_4")
end

function canDefeatArmos()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Shadow_Crystal")
          or has("Clawshot")
          or hasBombs()
          or has("Spinner")
end

function canDefeatBabaSerpent()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatBabyGohma()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Slingshot")
          or has("Clawshot")
          or hasBombs()
end

function canDefeatBari()
  return canUseWaterBombs() or has("Clawshot")
end

function canDefeatBeamos()
  return has("Ball_and_Chain")
          or has("Progressive_Bow")
          or hasBombs()
end

function canDefeatBigBaba()
  return hasSword()
          or has("Ball_and_Chain")
          or (has("Progressive_Bow") and canGetArrows())
          or has("Shadow_Crystal")
          or has("Spinner")
          or hasBombs()
end

function canDefeatChu()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or has("Clawshot")
          or hasBombs()
end

function canDefeatBokoblin()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Spinner")
          or has("Slingshot")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatBokoblinRed()
  return hasSword()
          or has("Ball_and_Chain")
          or (has("Progressive_Bow_3") and canGetArrows())
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatBombfish()
  return has("Iron_Boots")
          and (hasSword()
            or has("Clawshot")
            or (hasShield() and has("Progressive_Hidden_Skill",2)))
end

function canDefeatBombling()
  return hasSword()
          or has("Ball_and_Chain")
          or (has("Progressive_Bow") and canGetArrows())
          or has("Spinner")
          or has("Shadow_Crystal")
          or has("Clawshot")
end

function canDefeatBomskit()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatBubble()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
end

function canDefeatBulblin()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatChilfos()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Shadow_Crystal")
          or has("Spinner")
          or hasBombs()
end

function canDefeatChuWorm()
  return (hasSword()
            or has("Ball_and_Chain")
            or has("Progressive_Bow")
            or has("Spinner")
            or has("Shadow_Crystal")
          ) and (hasBombs()
            or has("Clawshot"))
end

function canDefeatDekuBaba()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Progressive_Hidden_Skill",2)
          or has("Slingshot")
          or has("Clawshot")
          or hasBombs()
end

function canDefeatDekuLike()
  return hasBombs()
end

function canDefeatDodongo()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatDinalfos()
  return hasSword() or has("Ball_and_Chain") or has("Shadow_Crystal")
end

function canDefeatFireBubble()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
end

function canDefeatFireKeese()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Slingshot")
          or has("Shadow_Crystal")
end

function canDefeatFireToadpoli()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or (has("Hylian_Shield") and has("Progressive_Hidden_Skill", 2))
end

function canDefeatFreezard()
  return has("Ball_and_Chain")
end

function canDefeatGoron()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or (hasShield() and has("Progressive_Hidden_Skill", 2))
          or has("Slingshot")
          or has("Clawshot")
          or hasBombs()
end

function canDefeatGhoulRat()
  return has("Shadow_Crystal")
end

function canDefeatGuay()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Shadow_Crystal")
          or has("Slingshot")
end

function canDefeatHelmasaur()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatHelmasaurus()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatIceBubble()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
end

function canDefeatIceKeese()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Slingshot")
          or has("Shadow_Crystal")
end

function canDefeatPoe()
  return has("Shadow_Crystal")
end

function canDefeatKargarok()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
end

function canDefeatKeese()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Slingshot")
          or has("Shadow_Crystal")
end

function canDefeatLeever()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatLizalfos()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatMiniFreezard()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatMoldorm()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatPoisonMite()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Lantern")
          or has("Spinner")
          or has("Shadow_Crystal")
end

function canDefeatPuppet()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatRat()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Slingshot")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatRedeadKnight()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatShadowBeast()
  return hasSword() or (has("Shadow_Crystal") and canCompleteMDH())
end

function canDefeatShadowBulblin()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatShadowDekuBaba()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Progressive_Hidden_Skill", 2)
          or has("Slingshot")
          or has("Clawshot")
          or hasBombs()
end

function canDefeatShadowInsect()
  return has("Shadow_Crystal")
end

function canDefeatShadowKargarok()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatShadowKeese()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Slingshot")
          or has("Shadow_Crystal")
end

function canDefeatShadowVermin()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatShellBlade()
  return canUseWaterBombs()
          or (hasSword()and has("Iron_Boots"))
end

function canDefeatSkullfish()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
end

function canDefeatSkulltula()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatStalfos()
  return canSmash()
end

function canDefeatStalhound()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatStalchild()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatTektite()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatTileWorm()
  return (hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Shadow_Crystal")
          or has("Spinner")
          or hasBombs()
        ) and has("Boomerang")
end

function canDefeatToado()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
end

function canDefeatWaterToadpoli()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or (hasShield() and has("Progressive_Hidden_Skill", 2))
end

function canDefeatTorchSlug()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatWalltula()
  return has("Ball_and_Chain")
          or has("Slingshot")
          or (has("Progressive_Bow") and canGetArrows())
          or has("Boomerang")
          or has("Clawshot")
end

function canDefeatWhiteWolfos()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatYoungGohma()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Spinner")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatCarrierKargarok()
  return has("Shadow_Crystal")
end

function canDefeatTwilitBloat()
  return has("Shadow_Crystal")
end

function canDefeatSkullKid()
  return has("Progressive_Bow")
end

function canDefeatKingBulblinBridge() -- unused
  return has("Progressive_Bow")
end

function canDefeatKingBulblinDesert()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Shadow_Crystal")
          or has("Progressive_Bow_3")
end

function canSmash()
  return has("Ball_and_Chain") or hasBombs()
end

function canBurnWebs()
  return has("Lantern")
          or hasBombs()
          or has("Ball_and_Chain")
end

function hasRangedItem()
  return has("Ball_and_Chain")
          or has("Slingshot")
          or has("Progressive_Bow")
          or has("Clawshot")
          or has("Boomerang")
end

function hasShield()
  return has("Hylian_Shield")
end

function canLaunchBombs()
  return (has("Boomerang") or has("Progressive_Bow")) and hasBombs()
end

function canKnockDownHCPainting()
  return has("Progressive_Bow")
          or (hasSword()
            and has("Progressive_Hidden_Skill", 6))
end

function canKnockDownHangingBaba()
  return has("Progressive_Bow")
          or has("Clawshot")
          or has("Boomerang")
end

function canBreakWoodenDoor()
  return has("Shadow_Crystal") or hasSword() or canSmash()
end

function hasBombs()
  return has("Bomb_Bag", 1)
end

function canUseWaterBombs()
  return has("Bomb_Bag", 1)
end

function canGetArrows()
  return canLeaveForest() or (canCompletePrologue() and has("Shadow_Crystal"))
end

function canCompletePrologue()
  return (hasSword()
            and has("Slingshot")
            and has("Faron_Woods_Small_Key",2))
          or has("skip-prologue-on")
end

function canCompleteMDH()
  return canCompleteLakebedTemple() or has("skip-mdh-on")
end

function canLeaveForest()
  return (canCompleteForestTemple() or has("skip-faron-on")) and canCompletePrologue()
end

function canCompleteAllDungeons()
  return canCompleteForestTemple()
          and canCompleteGoronMines()
          and canAccessLakebed() and canGetThroughStalactiteRoom() and canCompleteLakebedTemple() -- lakebed logic is split up more to account for boss key skip
          and canCompleteArbitersGrounds()
          and canCompleteSnowpeakRuins()
          and canCompleteTempleofTime()
          and canCompleteCityinTheSky()
          and canCompletePalaceofTwilight()
end

function canAccessLanayru()
  return canLeaveForest()
          and ((canSmash() or has("Gate_Keys"))
                and ((hasSword() and has("Slingshot"))
                      or has("skip-prologue-on")))
end

ScriptHost:LoadScript("scripts/logic/dungeons/forest.lua")
ScriptHost:LoadScript("scripts/logic/dungeons/mines.lua")
ScriptHost:LoadScript("scripts/logic/dungeons/lakebed.lua")
ScriptHost:LoadScript("scripts/logic/dungeons/arbiters.lua")
ScriptHost:LoadScript("scripts/logic/dungeons/snowpeak.lua")
ScriptHost:LoadScript("scripts/logic/dungeons/templeoftime.lua")
ScriptHost:LoadScript("scripts/logic/dungeons/cityinthesky.lua")
ScriptHost:LoadScript("scripts/logic/dungeons/palaceoftwilight.lua")
ScriptHost:LoadScript("scripts/logic/dungeons/hyrulecastle.lua")
