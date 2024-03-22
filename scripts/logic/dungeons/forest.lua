function canBreakMonkeyCage()
  return hasSword()
          or has("Iron_Boots")
          or has("Spinner")
          or has("Ball_and_Chain")
          or has("Shadow_Crystal")
          or hasBombs()
          or has("Clawshot")
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

function canCutHangingWeb()
  return has("Clawshot")
          or (has("Progressive_Bow") and canGetArrows())
          or has("Boomerang")
          or has("Ball_and_Chain")
end
  
function canCompleteForestTemple()
  return canBreakMonkeyCage() 
          and has("Boomerang") 
          and (has("Forest_Temple_Big_Key") or has("boss-keysy-enabled"))
          and (canFreeAllMonkeys() or has("Clawshot")) 
          and canDefeatDiababa()
end

function canDefeatOok()
  return hasSword()
          or has("Ball_and_Chain")
          or (has("Progressive_Bow") and canGetArrows())
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatDiababa()
  return canLaunchBombs()
          or (has("Boomerang")
              and (hasSword()
                    or has("Ball_and_Chain")
                    or has("Shadow_Crystal")
                    or hasBombs()))
end  
