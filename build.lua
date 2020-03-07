ceres.runConfig = {
    command = "start-wc3",
    prefix = "Z:/",
    mapDataDir = "/home/mori/Documents/Warcraft III/CustomMapData",
    args = {"-hd", "0"}
}

ceres.layout.srcDirectories = {"target/compiled", "node_modules", "pure"}

-- ceres.addPreScriptBuildHook("tstl-compile", function()
--     log("Running TSTL...")
--     os.execute("tstl -p ts/tsconfig.json")
-- end)
