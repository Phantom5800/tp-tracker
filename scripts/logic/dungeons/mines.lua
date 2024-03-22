function canPressMinesSwitch()
  return has("Iron_Boots")
end

function canAccessMines()
  return has("Iron_Boots") 
          and canDefeatGoron() 
          and ((hasSword() and has("Slingshot")) or has("skip-prologue-on")) 
          and canLeaveForest()
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

function canDefeatDangoro()
  return (hasSword() or has("Ball_and_Chain") or has("Shadow_Crystal"))
          and has("Iron_Boots")
end

function canDefeatFyrus()
  return has("Progressive_Bow")
          and has("Iron_Boots")
          and hasSword()
end
