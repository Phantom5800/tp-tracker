--[[-------------------------------------------------------
  Faron Field
---------------------------------------------------------]]
function Faron_Field_Female_Beetle()
  if has("Boomerang") or has("Clawshot") then
    return true
  elseif (canDoMapGlitch() or canDoEBMoonBoots()) then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Field_Poe()
  if has("Shadow_Crystal") and canCompleteMDH() then
    return true
  end
  return false
end

function Faron_Field_Room_Access()
  if canLeaveForest() and canCompletePrologue() then
    return true
  elseif canLeaveForestGlitched() then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Field_Bridge_Chest()
  if has("Clawshot") then
    return true
  elseif canDoStorage() then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Field_Corner_Grotto()
  if has("Shadow_Crystal") then
    if canLeaveForest() and canCompletePrologue() then
      return true
    elseif canLeaveForestGlitched() then
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

function Faron_Field_Tree_Heart_Piece()
  if has("Boomerang") or has("Clawshot") then
    return true
  elseif has("Ball_and_Chain") then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

--[[-------------------------------------------------------
  Faron Woods
---------------------------------------------------------]]
function Faron_Mist_Cave_Access()
  if has("Lantern") and canCompletePrologue() then
    return true
  elseif canDoMapGlitch() then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Mist_North_Chest()
  if has("Lantern") and canCompletePrologue() then
    return true
  elseif (has("Lantern") or canDoMapGlitch()) then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Mist_Poe()
  if has("Shadow_Crystal") then
    if canCompletePrologue() then
      return true
    else
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

function Faron_Mist_South_Chest()
  if has("Lantern") and canCompletePrologue() then
    return true
  elseif (has("Lantern") or canDoMapGlitch()) then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Mist_Stump_Chest()
  if has("Lantern") and canCompletePrologue() then
    return true
  elseif (has("Lantern") or has("Shadow_Crystal")) then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Woods_Coro_Bottle()
  return canCompletePrologue()
end

function Faron_Woods_Owl_Statue_Chest()
  if canSmash() and has("Progressive_Dominion_Rod_2") and has("Shadow_Crystal") and canLeaveForest() then
    return true
  elseif canDoMapGlitch() then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Woods_Owl_Statue_Sky_Character()
  if has("Progressive_Dominion_Rod_2") then
    if canSmash() and canLeaveForest() then
      return true
    elseif canDoMapGlitch() then
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

--[[-------------------------------------------------------
  Ordon Village
---------------------------------------------------------]]
function Ordon_Village_Cat_Rescue()
  return has("Progressive_Fishing_Rod_1")
end

function Ordon_Village_Links_Basement_Chest()
  return has("Lantern")
end

function Ordon_Village_Ordon_Shield()
  if canCompletePrologue() or (has("Faron_Vessel_of_Light") and has("Shadow_Crystal")) then
    -- TODO(?): if bonks do damage and ohko is enabled, this is technically false without a fairy bottle
    return true
  end
  return false
end

function Ordon_Village_Ordon_Sword()
  return canCompletePrologue() or has("Faron_Vessel_of_Light")
end

--[[-------------------------------------------------------
  Sacred Grove
---------------------------------------------------------]]
function Lost_Woods_Enter()
  return canCompletePrologue() and has("Shadow_Crystal")
end

function defeatSkullKid()
  return canDefeatSkullKid() or has('early-tot-grove') or has("early-tot-open")
end

function Lost_Woods_Lantern_Chest()
  return has("Lantern")
end

function Lost_Woods_Waterfall_Poe()
  return defeatSkullKid() and has("Shadow_Crystal")
end

function Sacred_Grove_Spinner_Chest()
  return defeatSkullKid() and has("Spinner")
end

function Sacred_Grove_Baba_Serpent_Grotto()
  if defeatSkullKid() and canSmash() and has("Shadow_Crystal") then
    return canDefeatBabaSerpent() and canKnockDownHangingBaba()
  end
  return false
end

function Sacred_Grove_Boulder_Poe()
  return defeatSkullKid() and canSmash() and has("Shadow_Crystal")
end

function Sacred_Grove_Master_Sword()
  return defeatSkullKid()
end

function Sacred_Grove_Master_Sword_Poe()
  return defeatSkullKid() and has("Shadow_Crystal")
end

function Sacred_Grove_Male_Snail()
  if defeatSkullKid() then
    if has("Boomerang") or has("Clawshot") then
      return true
    elseif canDoBallAndChainItemGrab() then
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

function Sacred_Grove_Female_Snail()
  if has("Boomerang") or has("Clawshot") then
    return true
  elseif canDoBallAndChainItemGrab() then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end
