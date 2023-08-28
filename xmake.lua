add_rules("mode.debug", "mode.release")

add_moduledirs("xmakeExt/modules")

set_languages("c++14")

target("xmakeIssueDemo")
    add_rules("qt.widgetapp")
    add_headerfiles("src/*.h")
    add_files("src/*.cpp")
    add_files("src/mainwindow.ui")
    -- add files with Q_OBJECT meta (only for qt.moc)
    add_files("src/mainwindow.h")
    -- # A
    --set_configvar("License", "MIT")
    --add_configfiles(path.join("$(projectdir)", "/config.h.in"), {filename = "myconfig.h"})
    on_config(function (target)
        -- # B
        --target:set("configvar", "License", "MIT")
        --target:add("configfiles", "config.h.in", {filename = "myconfig.h"})        

        -- # C
        import("myModule")
        myModule.setup(target)
    end)