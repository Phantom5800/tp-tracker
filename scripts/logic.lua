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
  if hasSword() or has("Ball_and_Chain") or has("Progressive_Bow") or has("Bomb_Bag", 1) or has("Iron_Boots") or has("Shadow_Crystal") or has("Spinner")
  then
    return true
  else
    return false
  end
end

function hasSword()
  if has("Progressive_Sword_1") or has("Progressive_Sword_2") or has("Progressive_Sword_3") or has("Progressive_Sword_4")
  then
    return true
  else
    return false
  end
end

function canDefeatAeralfos()
  if has("Clawshot")
      and (hasSword() or has("Ball_and_Chain") or has("Shadow_Crystal"))
  then
    return true
  else
    return false
  end
end
        
function canDefeatArmos()
  if hasSword() or has("Ball_and_Chain")
    or has("Progressive_Bow")
    or has("Shadow_Crystal") or has("Clawshot")
    or hasBombs() or has("Spinner")
     
  then
    return true
  else
    return false
  end
end
        
function canDefeatBabaSerpent()
  if hasSword() or has("Ball_and_Chain")
    or has("Progressive_Bow")
    or has("Spinner") or has("Shadow_Crystal")
    or hasBombs()  
  then
    return true
  else
    return false
  end
end
        
function canDefeatBabyGohma()
  if hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                or has("Spinner")
                or has("Slingshot")
                or (has("Clawshot"))
                or hasBombs()
                 
                then
                  return true
                else
                  return false
                end
              end
        
function canDefeatBari()
  if canUseWaterBombs() or (has("Clawshot"))
  then
    return true
  else
    return false
  end
end
        
function canDefeatBeamos()
  if has("Ball_and_Chain")
                or has("Progressive_Bow")
                or hasBombs()
                then
                  return true
                else
                  return false
                end
              end
        
function canDefeatBigBaba()
  if hasSword()
                or has("Ball_and_Chain")
                or (has("Progressive_Bow") and canGetArrows())
                
                or has("Shadow_Crystal")
                or has("Spinner")
                or hasBombs()
                 
                then
                  return true
                else
                  return false
                end
              end
        
function canDefeatChu()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or (has("Clawshot"))
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatBokoblin()
  if (
                hasSword()
                or has("Ball_and_Chain")
                
                or has("Spinner")
                or has("Slingshot")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end

  function canDefeatBokoblinRed()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or (has("Progressive_Bow_3") and canGetArrows())
                or has("Shadow_Crystal")
                or hasBombs()
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatBombfish()
  if 
                (
                    has("Iron_Boots")
                )
                and (
                    hasSword()
                    or (has("Clawshot"))
                    or (hasShield() and has("Progressive_Hidden_Skill",2)
                )
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatBombling()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or (has("Progressive_Bow") and canGetArrows())
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or (has("Clawshot"))
            )
            then
              return true
            else
              return false
            end
          end

function canDefeatBomskit()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
                
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatBubble()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatBulblin()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatChilfos()
  if (
                hasSword()
                or has("Ball_and_Chain")
                
                or has("Shadow_Crystal")
                or has("Spinner")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatChuWorm()
  if (
                (
                    hasSword()
                    or has("Ball_and_Chain")
                    or has("Progressive_Bow")
                    
                    or has("Spinner")
                    or has("Shadow_Crystal")
                     
                ) and (hasBombs() or (has("Clawshot")))
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatDarknut()
  if hasSword()
                then
                  return true
                else
                  return false
                end
              end
        
function canDefeatDekuBaba()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Progressive_Hidden_Skill",2)
                or has("Slingshot")
                or (has("Clawshot"))
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatDekuLike()
  if (hasBombs())
  then
    return true
  else
    return false
  end
end
        
function canDefeatDodongo()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatDinalfos()
  if (hasSword() or has("Ball_and_Chain") or has("Shadow_Crystal"))
  then
    return true
  else
    return false
  end
end
        
function canDefeatFireBubble()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatFireKeese()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Slingshot")
                or has("Shadow_Crystal")
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatFireToadpoli()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                or (has("Hylian_Shield") and has("Progressive_Hidden_Skill", 2))
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatFreezard()
  if has("Ball_and_Chain")
  then
    return true
  else
    return false
  end
end
        
function canDefeatGoron()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or (hasShield() and has("Progressive_Hidden_Skill", 2))
                or has("Slingshot")
                or has("Clawshot")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatGhoulRat()
  if has("Shadow_Crystal")
  then
    return true
  else
    return false
  end
end
        
function canDefeatGuay()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                or has("Shadow_Crystal")
                or has("Slingshot")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatHelmasaur()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatHelmasaurus()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatIceBubble()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatIceKeese()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Slingshot")
                or has("Shadow_Crystal")
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatPoe()
  if has("Shadow_Crystal")
  then
    return true
  else
    return false
  end
end
        
function canDefeatKargarok()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatKeese()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Slingshot")
                or has("Shadow_Crystal")
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatLeever()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatLizalfos()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatMiniFreezard()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatMoldorm()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatPoisonMite()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                or has("Lantern")
                or has("Spinner")
                or has("Shadow_Crystal")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatPuppet()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatRat()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Slingshot")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatRedeadKnight()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatShadowBeast()
  if (hasSword() or (has("Shadow_Crystal") and canCompleteMDH()))
  then
    return true
  else
    return false
  end
end
        
function canDefeatShadowBulblin()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatShadowDekuBaba()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Progressive_Hidden_Skill", 2)
                or has("Slingshot")
                or (has("Clawshot"))
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatShadowInsect()
  if has("Shadow_Crystal")
  then
    return true
  else
    return false
  end
end
        
function canDefeatShadowKargarok()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatShadowKeese()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Slingshot")
                or has("Shadow_Crystal")
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatShadowVermin()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatShellBlade()
  if (
                canUseWaterBombs()
                or (
                    hasSword()
                    and has("Iron_Boots")
                )
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatSkullfish()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatSkulltula()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatStalfos()
  if (canSmash())
  then
    return true
  else
    return false
  end
end
        
function canDefeatStalhound()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatStalchild()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatTektite()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatTileWorm()
  if (
                (
                    hasSword()
                    or has("Ball_and_Chain")
                    or has("Progressive_Bow")
                    or has("Shadow_Crystal")
                    or has("Spinner")
                    
                    or hasBombs()
                     
                ) and has("Boomerang")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatToado()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                or has("Spinner")
                or has("Shadow_Crystal")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatWaterToadpoli()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                or (hasShield() and has("Progressive_Hidden_Skill", 2))
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatTorchSlug()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                or has("Shadow_Crystal")
                or hasBombs()
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatWalltula()
  if (
                has("Ball_and_Chain")
                or has("Slingshot")
                or (has("Progressive_Bow") and canGetArrows())
                or has("Boomerang")
                or (has("Clawshot"))
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatWhiteWolfos()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatYoungGohma()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Spinner")
                or has("Shadow_Crystal")
                or hasBombs()
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatZantHead()
  if (has("Shadow_Crystal") or hasSword())  
  then
    return true
  else
    return false
  end
end
        
function canDefeatOok()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or (has("Progressive_Bow") and canGetArrows())
                
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatDangoro()
  if (
                (hasSword() or has("Ball_and_Chain") or has("Shadow_Crystal"))
                and has("Iron_Boots")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatCarrierKargarok()
  if has("Shadow_Crystal")
  then
    return true
  else
    return false
  end
end
        
function canDefeatTwilitBloat()
  if has("Shadow_Crystal")
  then
    return true
  else
    return false
  end
end
        
function canDefeatDekuToad()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Shadow_Crystal")
                or hasBombs()
                 
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatSkullKid()
  if has("Progressive_Bow")
  then
    return true
  else
    return false
  end
end
        
function canDefeatKingBulblinBridge()
  if has("Progressive_Bow")
  then
    return true
  else
    return false
  end
end
        
function canDefeatKingBulblinDesert()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Shadow_Crystal")
                or has("Progressive_Bow_3")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatKingBulblinCastle()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Shadow_Crystal")
                or has("Progressive_Bow_3")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatDeathSword()
  if (
                (
                    hasSword()
                    or has("Ball_and_Chain")
                    
                )
                and (
                    has("Boomerang")
                    or has("Progressive_Bow")
                    or (has("Clawshot"))
                )
                and has("Shadow_Crystal")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatDarkhammer()
  if (
                hasSword()
                or has("Ball_and_Chain")
                or has("Progressive_Bow")
                
                or has("Shadow_Crystal")
                or hasBombs()
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatPhantomZant()
  if (has("Shadow_Crystal") or hasSword())
  then
    return true
  else
    return false
  end
end
        
function canDefeatDiababa()
  if canLaunchBombs()
                or (
                    has("Boomerang")
                    and (
                        hasSword()
                        or has("Ball_and_Chain")
                        or has("Shadow_Crystal")
                        or hasBombs()
                    )
                )
                then
                  return true
                else
                  return false
                end
              end
        
function canDefeatFyrus()
  if (
                has("Progressive_Bow")
                and has("Iron_Boots")
                and (hasSword())
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatMorpheel()
  if (
                has("Zora_Armor")
                and has("Iron_Boots")
                and hasSword()
                and (has("Clawshot"))
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatStallord()
  if (
                (has("Spinner") and hasSword())
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatBlizzeta()
  if has("Ball_and_Chain")
  then
    return true
  else
    return false
  end
end
        
function canDefeatArmogohma()
  if (
                has("Progressive_Bow")
                and has("Progressive_Dominion_Rod_1")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatArgorok()
  if (
                has("Double_Clawshot")
                and has("Progressive_Sword_2")
                and has("Iron_Boots")
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatZant()
  if (
                has("Progressive_Sword_3")
                and (
                    has("Boomerang")
                    and (has("Clawshot"))
                    and has("Ball_and_Chain")
                    and has("Iron_Boots")
                    and (
                        has("Zora_Armor")
                    )
                )
            )
            then
              return true
            else
              return false
            end
          end
        
function canDefeatGanondorf()
  if has("Shadow_Crystal")
                and has("Progressive_Sword_3")
                and has("Progressive_Hidden_Skill", 1)
                then
                  return true
                else
                  return false
                end
              end
        
function canSmash()
  if (has("Ball_and_Chain") or hasBombs())
  then
    return true
  else
    return false
  end
end
        
function canBurnWebs()
  if has("Lantern") or hasBombs() or has("Ball_and_Chain")
  then
    return true
  else
    return false
  end
end
        
function hasRangedItem()
  if (
                has("Ball_and_Chain")
                or has("Slingshot")
                or has("Progressive_Bow")
                or (has("Clawshot"))
                or has("Boomerang")
            )
            then
              return true
            else
              return false
            end
          end
        
function hasShield()
  if (
                has("Hylian_Shield")
            )
            then
              return true
            else
              return false
            end
          end
        
function canLaunchBombs()
  if (
                (has("Boomerang") or has("Progressive_Bow")) and hasBombs()
            )
            then
              return true
            else
              return false
            end
          end
        
function canCutHangingWeb()
  if (
                (has("Clawshot"))
                or (has("Progressive_Bow") and canGetArrows())
                or has("Boomerang")
                or has("Ball_and_Chain")
            )
            then
              return true
            else
              return false
            end
          end
        
function canKnockDownHCPainting()
  if (
                has("Progressive_Bow")
                or ((hasSword() and has("Progressive_Hidden_Skill", 6))
                )
            )
            then
              return true
            else
              return false
            end
          end
        
function canBreakMonkeyCage()
  if (
                hasSword()
                or has("Iron_Boots")
                or has("Spinner")
                or has("Ball_and_Chain")
                or has("Shadow_Crystal")
                or hasBombs()
                or (has("Clawshot"))
            )
            then
              return true
            else
              return false
            end
          end
        
function canPressMinesSwitch()
  if has("Iron_Boots")
  then
    return true
  else
    return false
  end
end
        
function canFreeAllMonkeys()
  if (
                canBreakMonkeyCage()
                and (
                    has("Lantern")
                    or (
                        (hasBombs() or has("Iron_Boots"))
                    )
                )
                and canBurnWebs()
                and has("Boomerang")
                and canDefeatBokoblin()
                and (
                    has("Forest_Temple_Small_Key",4)
                )
            )
            then
              return true
            else
              return false
            end
          end
        
function canKnockDownHangingBaba()
  if (
                has("Progressive_Bow")
                or (has("Clawshot"))
                or has("Boomerang")
            )
            then
              return true
            else
              return false
            end
          end
        
function canBreakWoodenDoor()
  if (
                has("Shadow_Crystal") or hasSword() or canSmash()  
            )
            then
              return true
            else
              return false
            end
          end
        
function hasBombs()
  if (
    has("Bomb_Bag", 1))
            then
              return true
            else
              return false
            end
          end
        
function canUseWaterBombs()
  if (
    has("Bomb_Bag", 1)
            )
            then
              return true
            else
              return false
            end
          end

function canGetArrows()
  if (
                canLeaveForest() or (canCompletePrologue() and has("Shadow_Crystal"))
            )
            then
              return true
            else
              return false
            end
          end
        
function canCompletePrologue()
  if (
                (
                    hasSword()
                    and has("Slingshot")
                    and (
                        has("Faron_Woods_Small_Key",2)
                    )
                ) or has("skip-prologue-on")
            )
            then
              return true
            else
              return false
            end
          end
        
function canCompleteMDH()
  if (canCompleteLakebedTemple() or has("skip-mdh-on"))
  then
    return true
  else
    return false
  end
end
        
function canLeaveForest()
  if (
                (
                    canCompleteForestTemple()
                    or has("skip-faron-on")
                ) and canCompletePrologue()
            )
            then
              return true
            else
              return false
            end
          end
        
function canCompleteForestTemple()
  if (
      canBreakMonkeyCage() and has("Boomerang") and has("Forest_Temple_Big_Key") and (canFreeAllMonkeys() or has("Clawshot")) and canDefeatDiababa()
            )
            then
              return true
            else
              return false
            end
          end
        
function canCompleteGoronMines()
  if (
                canAccessMines() and has("Iron_Boots") and canBreakWoodenDoor() and has("Goron_Mines_Small_Key",3) and has("Progressive_Bow") and canDefeatBulblin() and has("Goron_Mines_Big_Key",3)
                and canDefeatFyrus()
            )
            then
              return true
            else
              return false
            end
          end
        
function canCompleteLakebedTemple()
  if (
                canAccessLakebed() and canLaunchBombs() and has("Lakebed_Temple_Small_Key",3) and has("Lakebed_Temple_Big_Key")
                and canDefeatMorpheel()
            )
            then
              return true
            else
              return false
            end
          end

function canCompleteArbitersGrounds()
            if ((canAccessArbiters() and has("Arbiters_Grounds_Small_Key",4) and has("Lantern") and has("Shadow_Crystal") and has("Clawshot") and has("Spinner") and has("Arbiters_Grounds_Big_Key")) and (( has("palace-vanilla") and canCompleteCityinTheSky()) or (has("palace-fused") and has("Progressive_Fused_Shadow_3") or (has("palace-mirror") and has("Progressive_Mirror_Shard_3")) or has("palace-open"))))
            then
              return true
            else
              return false
            end
          end

          function canCompleteSnowpeakRuins()
            if (
                          canAccessSnowpeakRuins() and has("Snowpeak_Ruins_Small_Key",4) and has("Ordon_Goat_Cheese") and  has("Ball_and_Chain") and hasBombs() and has("Snowpeak_Ruins_Bedroom_Key")
                          and canDefeatBlizzeta()
                      )
                      then
                        return true
                      else
                        return false
                      end
                    end


          function canCompleteTempleofTime()
            if (
                          canAccessToT() and has("Progressive_Dominion_Rod_1") and has("Progressive_Bow") and has("Spinner") and has("Temple_of_Time_Small_Key",3) and has("Temple_of_Time_Big_Key")
                          and canDefeatArmogohma()
                      )
                      then
                        return true
                      else
                        return false
                      end
                    end
        
function canCompleteCityinTheSky()
  if (
                canAccessCiTS() and has("Double_Clawshot") and has("Shadow_Crystal") and has("Iron_Boots") and has("City_in_The_Sky_Big_Key")
                and canDefeatArgorok()
            )
            then
              return true
            else
              return false
            end
          end
        
function canCompletePalaceofTwilight()
  if (
                canAccessPoT() and has("Progressive_Sword_4") and has("Shadow_Crystal") and has("Palace_of_Twilight_Small_Key",7) and has("Palace_of_Twilight_Big_Key")
                and canDefeatZant()
            )
            then
              return true
            else
              return false
            end
          end
        
function canCompleteAllDungeons()
  if (
                canCompleteForestTemple()
                and canCompleteGoronMines()
                and canCompleteLakebedTemple()
                and canCompleteArbitersGrounds()
                and canCompleteSnowpeakRuins()
                and canCompleteTempleofTime()
                and canCompleteCityinTheSky()
                and canCompletePalaceofTwilight()
            )
            then
              return true
            else
              return false
            end
          end


-- Old stuff
function canAccessForest()
  if has("$can_access_north_faron") and (has("FaronEscape") or has("$can_burn_webs"))
  then
    return true
  else
    return false
  end
end

function canAccessMines()
  if has("Iron_Boots") and canDefeatGoron() and ((hasSword() and has("Slingshot")) or has("skip-prologue-on")) and canLeaveForest()
  then
    return true
  else
    return false
  end
end

function canAccessLakebed()
  if canLeaveForest() and ((canSmash() and (hasSword() and  has("Slingshot")) or has("skip-prologue-on")) or (has("Gate_Keys") and (hasSword() and  has("Slingshot")) or has("skip-prologue-on"))) and has("Zora_Armor") and (has("early-lakebed-on") or (has("Iron_Boots") and canUseWaterBombs()))
  then
    return true
  else
    return false
  end
end

function canAccessLanayru()
  if canLeaveForest() and ((canSmash() or has("Gate_Keys")) and ((hasSword() and  has("Slingshot")) or has("skip-prologue-on")))
  then
    return true
  else
    return false
  end
end

function canAccessArbiters()
  if ((canSmash() or has("Gate_Keys")) and ((hasSword() and has("Slingshot")) or  has("skip-prologue-on")) and has("Auru_Memo") and (has("early-arbiters-on") or has("Gerudo_Desert_Small_Key")) and canLeaveForest())
  then
    return true
  else
    return false
  end
end

function canAccessSnowpeakRuins()
  if canSmash() and ((hasSword() and has("Slingshot")) or has("skip-prologue-on")) and canLeaveForest() and has("Shadow_Crystal") and (has("Reekfish_Scent") or has("early-snowpeak-on"))
  then
    return true
  else
    return false
  end
end

function canAccessToT()
  if 
  canCompletePrologue() and has("Shadow_Crystal") and (canDefeatShadowBeast() and has("Progressive_Sword_3") or has("early-tot-open"))
  then
    return true
  else
    return false
  end
end

function canAccessCiTS()
  if (canAccessLanayru() and has("Clawshot") and (has("Skybook",7) or has("early-city-on")))
  then
    return true
  else
    return false
  end
end

function canAccessPoT()
  if ((canAccessLanayru() and has("Auru_Memo")) and (canDefeatKingBulblinDesert() and has("Gerudo_Desert_Small_Key") and has("Arbiters_Grounds_Small_Key",5) and has("Lantern") and has("Shadow_Crystal") and has("Clawshot") and has("Spinner") and has("Arbiters_Grounds_Big_Key")) or
  (has("early-arbiters-on") and has("Arbiters_Grounds_Small_Key",5) and has("Lantern") and has("Shadow_Crystal") and has("Clawshot") and has("Spinner") and has("Arbiters_Grounds_Big_Key"))) and has("Shadow_Crystal") and (( has("palace-vanilla") and canCompleteCityinTheSky()) or (has("palace-fused") and has("Progressive_Fused_Shadow_3") or (has("palace-mirror") and has("Progressive_Mirror_Shard_3")) or has("palace-open")))
  then
    return true
  else
    return false
  end
end

function canAccessHyrule()
  if (has("boss8")
  or has("EarlyHyruleCastle"))
  and has("$can_access_castle_town")
  then
    return true
  else
    return false
  end
end




function has_explosives()
  if has("bombs") or has("wbombs") then
    return true
  else
    return false
  end
end

function can_smash()
  if has("$has_explosives") or has("Ball_and_Chain") then
    return true 
  else
    return false
  end
end

function shoot_pew()
  if has("bow") and has("$has_explosives") then
    return true
  else
    return false
  end
end

function can_do_damage()
  if has("bow") or has("spinner") or has("Ball_and_Chain") or has("sword1") or has("sword2") or has("sword3") or has("sword4") or has("irons") or has("$has_explosives") or has("shadcrystal") then
    return true
  else
    return false
  end
end

function has_ranged_item()
  if has("bow") or has("Ball_and_Chain") or has("cs") or has("dcs") or has("slingshot") or has("boomerang") then
    return true
  else
    return false
  end
end

function can_burn_webs()
  if has("lantern") or has("$can_smash") then
    return true
  else
    return false
  end
end

function faron_twilight_cleared()
  if has("vessel1") or has("TwilightSkip") then
    return true
  else
    return false
  end
end

function eldin_twilight_cleared()
  if has("vessel2") or has("TwilightSkip") then
    return true
  else
    return false
  end
end

function lanayru_twilight_cleared()
  if has("vessel3") or has("TwilightSkip") then
    return true
  else
    return false
  end
end


--Area Access Logic--
function can_access_north_faron()
  if has("$faron_twilight_cleared") and (has("lantern") or has("shadcrystal")) then
    return true
  else
    return false
  end
end

function can_access_kak_gorge()
  if has("$eldin_twilight_cleared") and (has("$can_access_faron_field") or has("$can_access_kak_village")) then
    return true
  else
    return false
  end
end

function can_access_kak_village()
  if has("$eldin_twilight_cleared") and has("$can_access_kak_gorge") then
    return true
  else
    return false
  end
end

function can_access_death_mountain()
  if has("$eldin_twilight_cleared") and has("$can_access_kak_village") and (has("irons") or has("MinesPatch")) then
    return true
  else
    return false
  end
end

function can_access_lake_hylia()
  if has("$lanayru_twilight_cleared") and has("$can_access_lanayru_field") and (has("$can_smash") or has("OpenGates")) then
    return true
  else
    return false
  end
end

function can_access_desert()
  if has("can_access_lake_hylia") and (has("memo") or has("EarlyDesert")) and has("shadcrystal") then
    return true
  else
    return false
  end
end

function can_access_zora_domain()
  if has("$lanayru_twilight_cleared") and (has("shadcrystal") or (has("$can_smash") and has("$can_access_lanayru_field"))) then
    return true
  else
    return false
  end
end

function can_access_snowpeak_summit()
  if has("$can_access_zora_domain") and has("reekfishscent") and has("shadcrystal") then
    return true
  else 
    return false
  end
end

function can_access_grove()
  if (has("$can_access_north_faron") and has("set_mdh_flag") and has("shadcrystal")) or (has("EarlyToT") and has("shadcrystal")) then
    return true
  else
    return false
  end
end

function can_access_grove_2()
  if (has("$can_access_north_faron") and has("boss5") and has("bow")) or (has("shadcrystal") and has("EarlyToT")) then
    return true
  else
    return false
  end
end

function can_access_mirror_chamber()
  if has("boss4") then
    return true
  else
    return false
  end
end

function can_access_castle_town()
  if has("$can_access_lanayru_field") then
    return true
  else
    return false
  end
end

function can_access_faron_field()
  if has("$faron_twilight_cleared") and (has("FaronEscape") or has("boss1") or (has("shadcrystal") and has("$eldin_twilight_cleared"))) then
    return true
  else
    return false
  end
end

function can_access_eldin_field()
  if has("$eldin_twilight_cleared") and (has("$can_access_faron_field") or has("shadcrystal")) then
    return true
  else
    return false
  end
end

function can_access_lanayru_field()
  if has("$lanayru_twilight_cleared") and ((has("$has_explosives") and has("$can_access_eldin_field")) or has("OpenGates") or has("shadcrystal")) then
    return true
  else
    return false
  end
end

function can_access_hidden_village()
  if has("statue") and (has("$can_access_lanayru_field") or (has("$can_access_eldin_field") and has("$can_smash"))) then
    return true
  else
    return false
  end
end

function set_mdh_flag()
  if has("SkipMDH") or has("boss3") then
    return true
  else
    return false
  end
end