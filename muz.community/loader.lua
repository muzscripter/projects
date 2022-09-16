getgenv().settings = {
  ['Key'] = "1iLliLLLi_10X@0+##)@"
}

local game_tables = loadstring(game:HttpGet("https://raw.githubusercontent.com/muzscripter/projects/main/muz.community/games.lua"))();
loadstring(game:HttpGet("https://raw.githubusercontent.com/muzscripter/projects/main/muz.community/systems.lua"))();

if not game_tables[game.PlaceId] then
  return Notify('Warning', 'Game isnt supported', 5)
end

  local _keys = {
  ["release"] = false,
  ["1iLliLLLi_10X@0+##)@"] = true
}


local key_file = "muz_community.txt"

function saveKey()
if (writefile) then
    local json;
    local http = game:GetService("HttpService")
    json = http:JSONEncode(tostring(getgenv().settings.Key))

    local success, err = pcall(function()
      writefile(key_file, json)
    end)
    
    if success then
      Notify('Notification', 'Succesfully saved key to workspace', 1)
      print('Key : ' .. tostring(getgenv().settings.Key))
    else
      Notify('Notification', 'Failed to save key', 1)
    end
  end
end

saveKey()

wait(1)


if (readfile and isfile and isfile(key_file)) then
  wait(1)
      
  local key;

  local sus, err = pcall(function()
    key = readfile(key_file)
  end)
  
  if sus and _keys[key:gsub('"', '')] then
    Notify('Key', 'Found saved key', 5)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/muzscripter/projects/main/muz.community/intro.lua'))()
    
  else
    Notify('Key', 'No previous key found or old key isnt valid.', 5)
  end
  
  elseif _keys[settings.Key] then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/muzscripter/projects/main/muz.community/intro.lua'))()
  else
    Notify('Key', 'Wrong Key', 5)
end
