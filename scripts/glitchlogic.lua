function showGlitchLogic()
  return show_glitch_logic
end

function canDoLJA()
  return hasSword() and has("Boomerang")
end

function canDoMapGlitch()
  return has("Shadow_Crystal") and canLeaveForest()
end

function canDoStorage()
  return canDoMapGlitch() and hasOneHandedItem()
end
