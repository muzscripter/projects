local function Check()
    local Scan = false;

    if ( assert(readfile) and assert(writefile) and assert(loadfile) and assert(isfile) and assert(isfolder) and assert(makefolder) ) then
       Scan = true
    else
       Scan = false
    end
    return Scan
end


 
if Check() == true then
    print('Hello World')
else
    return game.Players.LocalPlayer:Kick('Your executor isnt supported.')
end

local Response = syn.request({
    Url = "https://muz.wtf/whitelist",
    Method = "GET"
})

local SETTINGS_FILE = 'MUZSETTINGS.TXT'
local SETTINGS_TABLE = {}
local SETTINGS_JSON =  JSON = HTTP:JSONEncode(SETTINGS_TABLE)

if not isfile(SETTINGS_FILE) then
    writefile(SETTINGS_FILE, 'MUZ_CONFIG')
end
