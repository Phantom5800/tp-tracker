function canAccessToT()
  return canCompletePrologue() 
          and has("Shadow_Crystal") 
          and (canDefeatShadowBeast() and has("Progressive_Sword_3") or has("early-tot-open"))
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

function canDefeatDarknut()
  return hasSword()
end

function canDefeatArmogohma()
  return has("Progressive_Bow")
          and has("Progressive_Dominion_Rod_1")
end
