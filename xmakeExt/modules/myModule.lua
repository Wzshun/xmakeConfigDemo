function setup(target)
    target:set("configvar", "License", "MIT")
    
    -- # C.1 绝对路径
    --local configFile = path.join("$(projectdir)", "/config.h.in")
    --local configFile = "$(projectdir)" .. "/config.h.in"

    -- # C.2 相对路径
    local configFile = "config.h.in"
    target:add("configfiles", configFile, {filename = "myconfig.h"})
end