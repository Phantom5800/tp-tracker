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

function canDefeatAeralfos()
  return has("Clawshot")
          and (hasSword() 
                or has("Ball_and_Chain") 
                or has("Shadow_Crystal"))
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
        
function canDefeatDarknut()
  return hasSword()
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
        
function canDefeatZantHead()
  return has("Shadow_Crystal") or hasSword()
end
        
function canDefeatOok()
  return hasSword()
          or has("Ball_and_Chain")
          or (has("Progressive_Bow") and canGetArrows())
          or has("Shadow_Crystal")
          or hasBombs()
end
        
function canDefeatDangoro()
  return (hasSword() or has("Ball_and_Chain") or has("Shadow_Crystal"))
          and has("Iron_Boots")
end
        
function canDefeatCarrierKargarok()
  return has("Shadow_Crystal")
end
        
function canDefeatTwilitBloat()
  return has("Shadow_Crystal")
end
        
function canDefeatDekuToad()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Shadow_Crystal")
          or hasBombs()
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
        
function canDefeatKingBulblinCastle()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Shadow_Crystal")
          or has("Progressive_Bow_3")
end
        
function canDefeatDeathSword()
  return (hasSword() or has("Ball_and_Chain"))
          and (has("Boomerang")
                or has("Progressive_Bow")
                or has("Clawshot"))
          and has("Shadow_Crystal")
end
        
function canDefeatDarkhammer()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Shadow_Crystal")
          or hasBombs()
end
        
function canDefeatPhantomZant()
  return has("Shadow_Crystal") or hasSword()
end
        
function canDefeatDiababa()
  return canLaunchBombs()
          or (has("Boomerang")
              and (hasSword()
                    or has("Ball_and_Chain")
                    or has("Shadow_Crystal")
                    or hasBombs()))
end
        
function canDefeatFyrus()
  return has("Progressive_Bow")
          and has("Iron_Boots")
          and hasSword()
end
        
function canDefeatMorpheel()
  return has("Zora_Armor")
          and has("Iron_Boots")
          and hasSword()
          and has("Clawshot")
end
        
function canDefeatStallord()
  return has("Spinner") and hasSword()
end
        
function canDefeatBlizzeta()
  return has("Ball_and_Chain")
end
        
function canDefeatArmogohma()
  return has("Progressive_Bow")
          and has("Progressive_Dominion_Rod_1")
end
        
function canDefeatArgorok()
  return has("Double_Clawshot")
          and has("Progressive_Sword_2")
          and has("Iron_Boots")
end
        
function canDefeatZant()
  return has("Progressive_Sword_3")
          and has("Boomerang")
          and has("Clawshot")
          and has("Ball_and_Chain")
          and has("Iron_Boots")
          and has("Zora_Armor")
end
        
function canDefeatGanondorf()
  return has("Shadow_Crystal")
          and has("Progressive_Sword_3")
          and has("Progressive_Hidden_Skill", 1)
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
        
function canCutHangingWeb()
  return has("Clawshot")
          or (has("Progressive_Bow") and canGetArrows())
          or has("Boomerang")
          or has("Ball_and_Chain")
end
        
function canKnockDownHCPainting()
  return has("Progressive_Bow")
          or (hasSword() 
            and has("Progressive_Hidden_Skill", 6))
end
        
function canBreakMonkeyCage()
  return hasSword()
          or has("Iron_Boots")
          or has("Spinner")
          or has("Ball_and_Chain")
          or has("Shadow_Crystal")
          or hasBombs()
          or has("Clawshot")
end
        
function canPressMinesSwitch()
  return has("Iron_Boots")
end
        
function canFreeAllMonkeys()
  return canBreakMonkeyCage()
          and (has("Lantern")
            or hasBombs() 
            or has("Iron_Boots"))
          and canBurnWebs()
          and has("Boomerang")
          and canDefeatBokoblin()
          and (has("Forest_Temple_Small_Key",4) or has("small-keysy-enabled"))
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
        
function canCompleteForestTemple()
  return canBreakMonkeyCage() 
          and has("Boomerang") 
          and (has("Forest_Temple_Big_Key") or has("boss-keysy-enabled"))
          and (canFreeAllMonkeys() or has("Clawshot")) 
          and canDefeatDiababa()
end
        
function canCompleteGoronMines()
  return canAccessMines() 
          and has("Iron_Boots") 
          and canBreakWoodenDoor() 
          and (has("Goron_Mines_Small_Key",3) or has("small-keysy-enabled"))
          and has("Progressive_Bow") 
          and canDefeatBulblin() 
          and (has("Goron_Mines_Big_Key",3) or has("boss-keysy-enabled"))
          and canDefeatFyrus()
end
        
function canCompleteLakebedTemple()
  return canAccessLakebed() 
          and canLaunchBombs() 
          and (has("Lakebed_Temple_Small_Key",3) or has("small-keysy-enabled"))
          and (has("Lakebed_Temple_Big_Key") or has("boss-keysy-enabled"))
          and canDefeatMorpheel()
end

function canCompleteArbitersGrounds()
  return canAccessArbiters() 
          and (has("Arbiters_Grounds_Small_Key",4) or has("small-keysy-enabled"))
          and has("Lantern") 
          and has("Shadow_Crystal") 
          and has("Clawshot") 
          and has("Spinner") 
          and (has("Arbiters_Grounds_Big_Key") or has("boss-keysy-enabled"))
          and ((has("palace-vanilla") and canCompleteCityinTheSky()) 
                or (has("palace-fused") and has("Progressive_Fused_Shadow_3"))
                or (has("palace-mirror") and has("Progressive_Mirror_Shard_3")) 
                or has("palace-open"))
end

function canCompleteSnowpeakRuins()
  return canAccessSnowpeakRuins() 
          and ((has("Snowpeak_Ruins_Small_Key",4) and has("Ordon_Goat_Cheese")) or has("small-keysy-enabled"))
          and  has("Ball_and_Chain") 
          and hasBombs() 
          and (has("Snowpeak_Ruins_Bedroom_Key") or has("boss-keysy-enabled"))
          and canDefeatBlizzeta()
end


function canCompleteTempleofTime()
  return canAccessToT() 
          and has("Progressive_Dominion_Rod_1") 
          and has("Progressive_Bow") 
          and has("Spinner") 
          and (has("Temple_of_Time_Small_Key",3) or has("small-keysy-enabled"))
          and (has("Temple_of_Time_Big_Key") or has("boss-keysy-enabled"))
          and canDefeatArmogohma()
end
        
function canCompleteCityinTheSky()
  return canAccessCiTS() 
          and has("Double_Clawshot") 
          and has("Shadow_Crystal") 
          and has("Iron_Boots") 
          and (has("City_in_The_Sky_Big_Key") or has("boss-keysy-enabled"))
          and canDefeatArgorok()
end
        
function canCompletePalaceofTwilight()
  return canAccessPoT() 
          and has("Progressive_Sword_4") 
          and has("Shadow_Crystal") 
          and (has("Palace_of_Twilight_Small_Key",7) or has("small-keysy-enabled"))
          and (has("Palace_of_Twilight_Big_Key") or has("boss-keysy-enabled"))
          and canDefeatZant()
end
        
function canCompleteAllDungeons()
  return canCompleteForestTemple()
          and canCompleteGoronMines()
          and canCompleteLakebedTemple()
          and canCompleteArbitersGrounds()
          and canCompleteSnowpeakRuins()
          and canCompleteTempleofTime()
          and canCompleteCityinTheSky()
          and canCompletePalaceofTwilight()
end


-- Old stuff
function canAccessForest()
  return has("$can_access_north_faron") and (has("FaronEscape") or has("$can_burn_webs"))
end

function canAccessMines()
  return has("Iron_Boots") and canDefeatGoron() and ((hasSword() and has("Slingshot")) or has("skip-prologue-on")) and canLeaveForest()
end

function canAccessLakebed()
  return canLeaveForest() and ((canSmash() and (hasSword() and  has("Slingshot")) or has("skip-prologue-on")) or (has("Gate_Keys") and (hasSword() and  has("Slingshot")) or has("skip-prologue-on"))) and has("Zora_Armor") and (has("early-lakebed-on") or (has("Iron_Boots") and canUseWaterBombs()))
end

function canAccessLanayru()
  return canLeaveForest() and ((canSmash() or has("Gate_Keys")) and ((hasSword() and  has("Slingshot")) or has("skip-prologue-on")))
end

function canAccessArbiters()
  return ((canSmash() or has("Gate_Keys")) and ((hasSword() and has("Slingshot")) or  has("skip-prologue-on")) and has("Auru_Memo") and (has("early-arbiters-on") or has("Gerudo_Desert_Small_Key")) and canLeaveForest())
end

function canAccessSnowpeakRuins()
  return canSmash() and ((hasSword() and has("Slingshot")) or has("skip-prologue-on")) and canLeaveForest() and has("Shadow_Crystal") and (has("Reekfish_Scent") or has("early-snowpeak-on"))
end

function canAccessToT()
  return canCompletePrologue() and has("Shadow_Crystal") and (canDefeatShadowBeast() and has("Progressive_Sword_3") or has("early-tot-open"))
end

function canAccessCiTS()
  return (canAccessLanayru() and has("Clawshot") and (has("Skybook",7) or has("early-city-on")))
end

function canAccessPoT()
  return ((canAccessLanayru() and has("Auru_Memo"))
          and (canDefeatKingBulblinDesert() 
              and has("Gerudo_Desert_Small_Key") 
              and has("Arbiters_Grounds_Small_Key",5) 
              and has("Lantern") 
              and has("Shadow_Crystal") 
              and has("Clawshot") 
              and has("Spinner") 
              and has("Arbiters_Grounds_Big_Key")) 
            or (has("early-arbiters-on") 
              and has("Arbiters_Grounds_Small_Key",5) 
              and has("Lantern") 
              and has("Shadow_Crystal") 
              and has("Clawshot") 
              and has("Spinner") 
              and has("Arbiters_Grounds_Big_Key")))
          and has("Shadow_Crystal") 
          and ((has("palace-vanilla") and canCompleteCityinTheSky()) 
            or (has("palace-fused") 
              and has("Progressive_Fused_Shadow_3") 
              or (has("palace-mirror") and has("Progressive_Mirror_Shard_3")) 
              or has("palace-open")))
end

function canAccessHyrule()
  return (has("boss8") or has("EarlyHyruleCastle"))
          and has("$can_access_castle_town")
end

function has_explosives()
  return has("bombs") or has("wbombs")
end

function can_smash()
  return has("$has_explosives") or has("Ball_and_Chain")
end

function shoot_pew()
  return has("bow") and has("$has_explosives")
end

function can_do_damage()
  return has("bow") or has("spinner") or has("Ball_and_Chain") or has("sword1") or has("sword2") or has("sword3") or has("sword4") or has("irons") or has("$has_explosives") or has("Shadow_Crystal")
end

function has_ranged_item()
  return has("bow") or has("Ball_and_Chain") or has("cs") or has("dcs") or has("slingshot") or has("boomerang")
end

function can_burn_webs()
  return has("lantern") or has("$can_smash")
end

function faron_twilight_cleared()
  return has("vessel1") or has("TwilightSkip")
end

function eldin_twilight_cleared()
  return has("vessel2") or has("TwilightSkip")
end

function lanayru_twilight_cleared()
  return has("vessel3") or has("TwilightSkip")
end


--Area Access Logic--
function can_access_north_faron()
  return has("$faron_twilight_cleared") and (has("lantern") or has("Shadow_Crystal"))
end

function can_access_kak_gorge()
  return has("$eldin_twilight_cleared") and (has("$can_access_faron_field") or has("$can_access_kak_village"))
end

function can_access_kak_village()
  return has("$eldin_twilight_cleared") and has("$can_access_kak_gorge")
end

function can_access_death_mountain()
  return has("$eldin_twilight_cleared") and has("$can_access_kak_village") and (has("irons") or has("MinesPatch"))
end

function can_access_lake_hylia()
  return has("$lanayru_twilight_cleared") and has("$can_access_lanayru_field") and (has("$can_smash") or has("OpenGates"))
end

function can_access_desert()
  return has("can_access_lake_hylia") and (has("memo") or has("EarlyDesert")) and has("Shadow_Crystal")
end

function can_access_zora_domain()
  return has("$lanayru_twilight_cleared") and (has("Shadow_Crystal") or (has("$can_smash") and has("$can_access_lanayru_field")))
end

function can_access_snowpeak_summit()
  return has("$can_access_zora_domain") and has("reekfishscent") and has("Shadow_Crystal")
end

function can_access_grove()
  return (has("$can_access_north_faron") and has("set_mdh_flag") and has("Shadow_Crystal")) or (has("EarlyToT") and has("Shadow_Crystal"))
end

function can_access_grove_2()
  return (has("$can_access_north_faron") and has("boss5") and has("bow")) or (has("Shadow_Crystal") and has("EarlyToT"))
end

function can_access_mirror_chamber()
  return has("boss4")
end

function can_access_castle_town()
  return has("$can_access_lanayru_field")
end

function can_access_faron_field()
  return has("$faron_twilight_cleared") and (has("FaronEscape") or has("boss1") or (has("Shadow_Crystal") and has("$eldin_twilight_cleared")))
end

function can_access_eldin_field()
  return has("$eldin_twilight_cleared") and (has("$can_access_faron_field") or has("Shadow_Crystal"))
end

function can_access_lanayru_field()
  return has("$lanayru_twilight_cleared") and ((has("$has_explosives") and has("$can_access_eldin_field")) or has("OpenGates") or has("Shadow_Crystal"))
end

function can_access_hidden_village()
  return has("statue") and (has("$can_access_lanayru_field") or (has("$can_access_eldin_field") and has("$can_smash")))
end

function set_mdh_flag()
  return has("SkipMDH") or has("boss3")
end