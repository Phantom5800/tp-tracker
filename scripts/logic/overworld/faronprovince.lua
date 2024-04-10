--[[-------------------------------------------------------
  Faron Field
---------------------------------------------------------]]
function Faron_Field_Room_Access()
  if canLeaveForest() and canCompletePrologue() then
    return true
  elseif showGlitchLogic() and canLeaveForestGlitched() then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Field_Bridge_Chest()
  if has("Clawshot") then
    return true
  elseif showGlitchLogic() and canDoStorage() then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Field_Corner_Grotto()
  if has("Shadow_Crystal") then
    if canLeaveForest() and canCompletePrologue() then
      return true
    elseif showGlitchLogic() and canLeaveForestGlitched() then
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

function Faron_Field_Tree_Heart_Piece()
  if has("Boomerang") or has("Clawshot") then
    return true
  elseif showGlitchLogic() and has("Ball_and_Chain") then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

--[[-------------------------------------------------------
  Faron Woods
---------------------------------------------------------]]
function Faron_Woods_Coro_Bottle()
  return canCompletePrologue()
end

function Faron_Woods_Owl_Statue_Chest()
  if canSmash() and has("Progressive_Dominion_Rod_2") and has("Shadow_Crystal") and canLeaveForest() then
    return true
  elseif showGlitchLogic() and canDoMapGlitch() then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Faron_Woods_Owl_Statue_Sky_Character()
  if has("Progressive_Dominion_Rod_2") then
    if canSmash() and canLeaveForest() then
      return true
    elseif showGlitchLogic() and canDoMapGlitch() then
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

--[[-------------------------------------------------------
  Ordon Village
---------------------------------------------------------]]
