local CollectionService = game:GetService("CollectionService")

local ModulesLoaded = {}

local function _GetModules(): number
    local count = 0
    for _, descendant in next, CollectionService:GetTagged("Library") do
        if descendant:IsA("ModuleScript") then
            ModulesLoaded[descendant.Name] = descendant
            count = count + 1
        end
    end

    return count
end

local ModuleCounts = _GetModules()
print(ModuleCounts .. " Modules Loaded")

local ModuleLoader = setmetatable({}, {
    __call = function(_, Name)
        local success, result = pcall(function()
            return ModulesLoaded[Name]
        end)

        if not success or not result then
            error("Failed to retrieve: " .. Name, 2)
            return nil
        end

        return require(result)
    end
})

return ModuleLoader
