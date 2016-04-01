------------------------------------------------------------
-- In this file you will not find any part of Anna itself --
-- However Anna can send messages the game can pick up.   --
-- Here I'm only dealing with those properly. ;)          --
------------------------------------------------------------

local anna = {}

if not user.netallowed then return {} end

local function annashow()
  if #anna.msg>0 then DarkText("Anna Says:",0,0,{255,0,0}) else return end
  for i,a in pairs(anna.msg) do
      DarkText(a.msg,5,i*15)
      a.tme = a.tme - 1      
  end
  if anna.msg[1].tme<=0 then table.remove(anna.msg,1) end
end
if chain then chain.x.afterdraw = chain.x.afterdraw or annashow end

anna.msg = {}

function anna.addmsg(message)
anna.msg[#anna.msg+1] = {
                           msg = message,
                           tme = 10000
                        }
end


return anna


