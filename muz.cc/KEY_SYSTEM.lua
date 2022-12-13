if assert(writefile) then getgenv().flags['settings']['write_file'] = true else game:GetService('Players').LocalPlayer:Kick('Your executor doesnt support "writefile()" ') end
print('CHECK 1: PASSED')

xpcall(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/muzscripter/projects/main/muz.cc/GAMES_TABLE.lua'))()
    print('Returned game tables.')
end, function()
    print('Failed to return GAMES_TABLE.')
end)

local KEYS = "MUZ.txt"
local JSON;
local HTTP = game:GetService("HttpService")
local COGENT = {
    ['BLEACHISPEAK'] = true;
}

function saveKey()
    if (writefile) and getgenv().flags['settings'].key ~= nil then
    JSON = HTTP:JSONEncode(tostring(getgenv().flags['settings'].key))

    local x,y = pcall(function()
      writefile(KEYS, JSON)
    end)
    
    if x then
      print('KEY SAVED: ' .. tostring(getgenv().flags['settings'].key))
    else
      print('Failed to save key.')
    end
  end
end

saveKey()

if (readfile and isfile and isfile(KEYS)) then
  local key;
  local p,q = pcall(function() key = readfile(KEYS) end)
  
  if p and COGENT[key:gsub('"', '')] then 
    pcall(function() 
        return loadstring(game:HttpGet(GAME_HTTPS[game.PlaceId]))() 
    end);
    print('CORRECT KEY!')
    else
        print('No previous key found or, old key isnt working') 
    end
  
  elseif COGENT[getgenv().flags['settings'].key] then pcall(function() return loadstring(game:HttpGet(GAME_HTTPS[game.PlaceId]))() end);
  else
    print('CHECK 2: FAILED')
end
