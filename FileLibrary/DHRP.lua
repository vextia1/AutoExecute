--[[ AUTO AUDIO ENCODE ]]--

local Hex = ("%#x")
local Met = (getrawmetatable(game))
local Net = (Met.__namecall)
local Clo = (newcclosure)
local Sro = setreadonly

local HexEncode = function(String)
    
   local CTH = function(c)
      return string.format("%%%02X", string.byte(c))
   end
   
   if String == (nil) then return end
   
   String = String:gsub("\n", "\r\n")
   String = String:gsub("([^% ])", CTH)
   String = String:gsub(" ", "+")
   
   return String
end

Sro(Met, false)

Met.__namecall = Clo(function(dababy, ...)
    
    local args = { ... }
    
    if args[1] == "PlaySong" then
       
       args[2] = string.format(Hex, args[2])
       args[2] = HexEncode(args[2])
       
       print("Successful Encode:", args[2])
       
       return Net(dababy, unpack(args))
    end
    
    return Net(dababy, ...)
end)

Sro(Met, true);

--[[ MAIN ]]--
