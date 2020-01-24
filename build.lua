ceres.runConfig = {
    command = "start-wc3",
    prefix = "Z:/",
    mapDataDir = "/home/mori/Documents/Warcraft III/CustomMapData"
}

table.insert(ceres.layout.srcDirectories, "ts/compiled/")

-- ceres.addPreScriptBuildHook("tstl-compile", function()
--     log("Running TSTL...")
--     os.execute("tstl -p ts/tsconfig.json")
-- end)