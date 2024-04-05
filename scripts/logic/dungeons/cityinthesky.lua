--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canAccessCiTS()
  return canAccessLanayru()
          and has("Clawshot")
          and (has("Skybook",7) or has("early-city-on"))
end

function canCompleteCityinTheSky()
  return canAccessCiTS()
          and has("Double_Clawshot")
          and has("Shadow_Crystal")
          and has("Iron_Boots")
          and (has("City_in_The_Sky_Big_Key") or has("boss-keysy-enabled"))
          and canDefeatArgorok()
end

--[[-------------------------------------------------------
  Bosses and Unique Enemies
---------------------------------------------------------]]
function canDefeatAeralfos()
  return has("Clawshot")
          and (hasSword()
                or has("Ball_and_Chain")
                or has("Shadow_Crystal"))
end

function canDefeatArgorok()
  return has("Double_Clawshot")
          and has("Progressive_Sword_2")
          and has("Iron_Boots")
end

--[[-------------------------------------------------------
  Individual Checks
---------------------------------------------------------]]
function City_in_the_Sky_Aeralfos_Chest()
  local key = has("City_in_The_Sky_Small_Key") or has("small-keysy-enabled")
  return key and has("Spinner") and has("Boomerang") and has("Iron_Boots") and canDefeatAeralfos()
end

function City_in_the_Sky_After_Dinalfos_Chests()
  local key = has("City_in_The_Sky_Small_Key") or has("small-keysy-enabled")
  return key and has("Boomerang") and has("Spinner")
end

function City_in_the_Sky_Dungeon_Reward()
  local key = has("City_in_The_Sky_Big_Key") or has("boss-keysy-enabled")
  return key and canDefeatArgorok()
end

function City_in_the_Sky_East_First_Wing_Chest_After_Fans()
  local key = has("City_in_The_Sky_Small_Key") or has("small-keysy-enabled")
  return key and has("Spinner")
end

function City_in_the_Sky_East_Tile_Worm_Small_Chest()
  local key = has("City_in_The_Sky_Small_Key") or has("small-keysy-enabled")
  return key and has("Spinner")
end

function City_in_the_Sky_East_Wing_Lower_Level_Chest()
  local key = has("City_in_The_Sky_Small_Key") or has("small-keysy-enabled")
  return key and has("Double_Clawshot") and has("Spinner")
end

function City_in_the_Sky_West_Wing_Baba_Balcony_Chest()
  local key = has("City_in_The_Sky_Small_Key") or has("small-keysy-enabled")
  return key and has("Double_Clawshot")
end
