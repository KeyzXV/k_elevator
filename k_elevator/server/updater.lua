local curVersion = GetResourceMetadata(GetCurrentResourceName(), "version")
local resourceName = "k_elevator"

if Config.checkForUpdates then
    CreateThread(function()
        if GetCurrentResourceName() ~= "k_elevator" then
            resourceName = "k_elevator (" .. GetCurrentResourceName() .. ")"
        end
    end)

    CreateThread(function()
        while true do
            PerformHttpRequest("https://api.github.com/repos/keyzxv/k_elevator/releases/latest", CheckVersion, "GET")
            Wait(3600000)
        end
    end)

    CheckVersion = function(err, responseText, headers)
        local repoVersion, repoURL, repoBody = GetRepoInformations()

        CreateThread(function()
            if curVersion ~= repoVersion then
                Wait(4000)
                print("^0[^KDEV^0] " .. resourceName .. " is ^not ^0up to date! Update the resources")
                print("^0[^KDEV^0] Your Version: ^3" .. curVersion .. "^0")
                print("^0[^KDEV^0] Latest Version: ^3" .. repoVersion .. "^0")
                print("^0[^KDEV^0]  latest Version from: ^3" .. repoURL .. "^0")
                print("^0[^KDEV^0] Changelog:^0")
                print("^3" .. repoBody .. "^0")
            else
                Wait(4000)
                print("^0[^KDEV^0] " .. resourceName .. " is up to date! (^2" .. curVersion .. "^0)")
            end
        end)
    end

    GetRepoInformations = function()
        local repoVersion, repoURL, repoBody = nil, nil, nil

        PerformHttpRequest("https://api.github.com/repos/keyzxv/k_elevator/releases/latest", function(err, response, headers)
            if err == 200 then
                local data = json.decode(response)

                repoVersion = data.tag_name
                repoURL = data.html_url
                repoBody = data.body
            else
                repoVersion = curVersion
                repoURL = "https://github.com/keyzxv/k_elevator"
            end
        end, "GET")

        repeat
            Wait(50)
        until (repoVersion and repoURL and repoBody)

        return repoVersion, repoURL, repoBody
    end
end