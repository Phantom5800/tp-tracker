--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canAccessHyruleCastle()
    if has("castle-vanilla") then
        return has("Zant")
    elseif has("castle-fused") then
        return has("Progressive_Fused_Shadow_3")
    elseif has("castle-mirror") then
        return has("Progressive_Mirror_Shard_3")
    elseif has("castle-ad") then
        return has("Diababa")
                and has("Fyrus")
                and has("Morpheel")
                and has("Stallord")
                and has("Blizzeta")
                and has("Armogohma")
                and has("Argorok")
                and has("Zant")
    elseif has("castle-open") then
        return true
    end
    return false
end

--[[-------------------------------------------------------
  Bosses and Unique Enemies
---------------------------------------------------------]]
function canDefeatKingBulblinCastle()
    return hasSword()
            or has("Ball_and_Chain")
            or has("Shadow_Crystal")
            or has("Progressive_Bow_3")
end

function canDefeatGanondorf()
    return has("Shadow_Crystal")
            and has("Progressive_Sword_3")
            and has("Progressive_Hidden_Skill", 1)
end

function canDefeatFinalBoss()
  if canDefeatGanondorf() then -- stop if can't beat ganon
    local smkeys = has("Hyrule_Castle_Small_Key",3) or has("small-keysy-enabled")
    local bosskey = has("Hyrule_Castle_Big_Key") or has("boss-keysy-enabled")
    if smkeys and bosskey then -- check keys first
      if canDefeatLizalfos() and canDefeatDarknut() and has("Boomerang") and has("Spinner") then
        if (has("Lantern") and canDefeatDinalfos()) or canKnockDownHCPainting() then
          if has("Double_Clawshot") then -- logically need both clawshots
              return true
          elseif has("Clawshot") then
              return true,AccessibilityLevel.SequenceBreak -- double clawshot skip
          end
        end
      end
    end
  end
  return false
end

--[[-------------------------------------------------------
  Individual Checks
---------------------------------------------------------]]
function Hyrule_Castle_Big_Key_Chest()
  local key = has("Hyrule_Castle_Small_Key",1) or has("small-keysy-enabled")
  return key and has("Double_Clawshot") and has("Boomerang")
end

function Hyrule_Castle_Lantern_Staircase_Chest()
  local key = has("Hyrule_Castle_Small_Key",1) or has("small-keysy-enabled")
  return key and has("Double_Clawshot") and has("Boomerang") and has("Progressive_Sword_1")
end

function Hyrule_Castle_Main_Hall_Northeast_Chest()
  local key = has("Hyrule_Castle_Small_Key",1) or has("small-keysy-enabled")
  return key and has("Clawshot")
end

function Hyrule_Castle_Main_Hall_Northwest_Chest()
  local key = has("Hyrule_Castle_Small_Key",1) or has("small-keysy-enabled")
  return key and has("Double_Clawshot") and has("Boomerang")
          and (has("Progressive_Sword_1") or (has("Ball_and_Chain") and hasBombs()))
end

function Hyrule_Castle_Main_Hall_Southeast_Balcony_Tower_Chest()
  local key = has("Hyrule_Castle_Small_Key",1) or has("small-keysy-enabled")
  return key and has("Double_Clawshot") and has("Boomerang")
end

function Hyrule_Castle_Main_Hall_Southwest_Chest()
  local key = has("Hyrule_Castle_Small_Key",1) or has("small-keysy-enabled")
  return key and has("Double_Clawshot") and has("Boomerang")
          and (has("Progressive_Sword_1") or (has("Ball_and_Chain") and hasBombs()))
end

function Hyrule_Castle_Treasure_Room()
  local key = has("Hyrule_Castle_Small_Key",3) or has("small-keysy-enabled")
  return key and has("Double_Clawshot") and has("Boomerang") and has("Spinner")
end
