state("ActionHenk") {}

startup {
    refreshRate = 0.5;

    // Array of number of medals required to unlock each new batch of levels
    vars.anyMedalsUnlock = new int[] {7, 16, 27, 38, 43, 57, 72, 85};

    settings.Add("category_any", true, "Any% Splitting");
    settings.SetToolTip("category_any", "Full auto-splitting for Any% runs.");
    for (int i = 0; i < vars.anyMedalsUnlock.Length; i++)
        settings.Add("any_"+vars.anyMedalsUnlock[i], true, "Split when unlocking "+vars.anyMedalsUnlock[i]+" medals", "category_any");
    settings.Add("any_the_wall", true, "Split when beating \"The Wall\"", "category_any");
    settings.Add("any_pinball", true, "Split when beating \"Pinball\"", "category_any");
    settings.Add("any_kentinator", true, "Split when beating \"Kentinator's Challenge\"", "category_any");
    settings.Add("any_credits", true, "Split when beating \"Credits\"", "category_any");

    settings.Add("category_all_levels", false, "All Levels Splitting");
    settings.SetToolTip("category_all_levels", "Full auto-splitting for All Levels runs.");
    settings.Add("all_levels_batch", true, "Split at each batch cleared", "category_all_levels");
  settings.Add("all_levels_track", false, "Split at every track cleared", "category_all_levels");
    
    settings.Add("category_all_rainbows", false, "All Rainbows Splitting");
    settings.SetToolTip("category_all_rainbows", "Full auto-splitting for All Rainbows runs.");
    settings.Add("all_rainbows_batch", true, "Split at each batch rainbowed", "category_all_rainbows");
  settings.Add("all_rainbows_track", false, "Split at every track rainbowed (or completed for specials)", "category_all_rainbows");
    
    settings.Add("category_hundo", false, "100% Splitting");
    settings.SetToolTip("category_hundo", "Full auto-splitting for 100% runs.");
    settings.Add("hundo_batch", true, "Split at each batch fully completed", "category_hundo");
  settings.Add("hundo_track", false, "Split at every track rainbowed (or completed for specials)", "category_hundo");

    settings.Add("category_45classics", false, "45 Classics Splitting");
    settings.SetToolTip("category_45classics", "Full auto-splitting for 45 Classics runs.");
  settings.Add("45classics_batch", true, "Split at each last classic track of each batch", "category_45classics");
  settings.Add("45classics_track", false, "Split at every track", "category_45classics");
    
    settings.Add("load_removal", false, "Load Removal");
    settings.SetToolTip("load_removal", "Load Removal pauses the timer during load times, cutscenes, and the post-game menus.");
    
    settings.Add("reset_tracking", false, "Reset Tracking");
    settings.SetToolTip("reset_tracking", "Tracks the amount of times you reset during an attempt. Only works when using the full reset, not checkpoint reset, key.");

    // Array of ids of the last classics levels of batches 
  vars.classicBatchEnd = new int[] {14, 7, 50, 23, 47, 66, 26, 76, 31};

    // Id of levels sorted by batches
    vars.levelsCode = new int[][] {
        new int[] {13, 34, 03, 02, 14, 17, 54},
        new int[] {04, 16, 32, 27, 07, 52, 55},
        new int[] {18, 20, 30, 35, 50, 51, 42},
        new int[] {48, 15, 08, 24, 23, 53, 56},
        new int[] {43, 44, 45, 46, 47, 39, 57},
        new int[] {64, 36, 28, 65, 66, 68, 67},
        new int[] {69, 70, 29, 71, 26, 73, 72},
        new int[] {74, 10, 25, 75, 76, 78, 77},
        new int[] {79, 21, 19, 80, 31, 82, 81},
        new int[] {83, 84, 85, 86, 87, 89, 88},
        new int[] {98, 99, 100, 101, 102, 104, 103}
    };

    // Number of medals sorted by batches
    vars.levelsMedals = Enumerable.Range(0, 11).Select(i => new int[7]).ToArray();

    // Can't use enum so put GUIScreens in vars instead
    vars.GUIScreen_MainMenu    =  1;
    vars.GUIScreen_Loading     =  5;
    vars.GUIScreen_PreGame     =  8;
    vars.GUIScreen_InGame      =  9;
    vars.GUIScreen_PostGame    = 10;
    vars.GUIScreen_Cutscene    = 11; // Actually GUIScreen_None
    vars.GUIScreen_BatchSelect = 37;

    // Number of medals the player had/has earned
    vars.curSumMedals = vars.oldSumMedals = 0;
    // Number of batches the player had/has completed (counts if all normal levels are completed with at least bronze)
    vars.curFullBatches = vars.oldFullBatches = 0;
    // Number of perfect batches the player had/has completed (counts if all normal levels are completed with rainbow)
    vars.curRainbowBatches = vars.oldRainbowBatches = 0;
    // Number of batches the player had/has fully completed (counts if all normal levels are completed with rainbow, and the challenge and bonus level were beaten)
    vars.curCompletedBatches = vars.oldCompletedBatches = 0;

    // Reset tracker variables
    vars.textSettingReset = null;
    vars.totalResets = 0;

    // Update function of the reset tracker
    vars.UpdateResetTracker = (Action)(() => {
        if(vars.textSettingReset == null) {
            foreach (dynamic component in timer.Layout.Components) {
                if (component.GetType().Name == "TextComponent" && component.Settings.Text1 == "Resets This Run:") {
                    vars.textSettingReset = component.Settings;
                    break;
                }
            }

            if(vars.textSettingReset == null)
                vars.textSettingReset = vars.CreateTextComponent("Resets This Run:");
        }

        vars.textSettingReset.Text2 = vars.totalResets.ToString();
    });

    // Component creation function
    vars.CreateTextComponent = (Func<string, dynamic>)((name) => {
        var textComponentAssembly = Assembly.LoadFrom("Components\\LiveSplit.Text.dll");
        dynamic textComponent = Activator.CreateInstance(textComponentAssembly.GetType("LiveSplit.UI.Components.TextComponent"), timer);
        timer.Layout.LayoutComponents.Add(new LiveSplit.UI.Components.LayoutComponent("LiveSplit.Text.dll", textComponent as LiveSplit.UI.Components.IComponent));
        textComponent.Settings.Text1 = name;
        return textComponent.Settings;
    });

    // Function called when the timer start to reset local variables
    vars.ResetVars = (EventHandler)((s, e) => {
        vars.totalResets = 0;
        vars.UpdateResetTracker();
        vars.curSumMedals = vars.oldSumMedals = 0;
        vars.curFullBatches = vars.oldFullBatches = 0;
        vars.curRainbowBatches = vars.oldRainbowBatches = 0;
        vars.curCompletedBatches = vars.oldCompletedBatches = 0;
    });
    timer.OnStart += vars.ResetVars;

    // Return if the current level is completed with at least bronze medal(param false) or with rainbow medal(param false)
    vars.IsCurrentLevelCompleted = (Func<bool, bool>)((isRainbow) => {
        if(vars.oldSumMedals == vars.curSumMedals) return false;
        int levelId = Array.IndexOf(vars.levelsCode[vars.lookingAtBatchNum.Current], vars.levelCode.Current);
        return vars.levelsMedals[vars.lookingAtBatchNum.Current][levelId] > (isRainbow ? (levelId < 5 ? 3 : 0) : 0);
    });

    // AOB signature for ActionHenk:Start
    vars.scanActionHenkStart = new SigScanTarget(0, "55 8B EC 53 57 56 83 EC 1C 8B 7D 08 8B 47 20");
}

init {
    IntPtr ptrActionHenkStart = IntPtr.Zero;

    print("[Autosplitter] Scanning memory");
    foreach (var page in game.MemoryPages()) {
        var scanner = new SignatureScanner(game, page.BaseAddress, (int)page.RegionSize);

        if((ptrActionHenkStart = scanner.Scan(vars.scanActionHenkStart)) != IntPtr.Zero) {
            print("[Autosplitter] ActionHenk:Start Found : " + ptrActionHenkStart.ToString("X"));
            break;
        }
    }

    if (ptrActionHenkStart == IntPtr.Zero)
        throw new Exception("[Autosplitter] Can't find signature");

    int relPtr = (int)((long)ptrActionHenkStart - (long)modules.First().BaseAddress);

    vars.watchers = new MemoryWatcherList() {
        // LevelBatchManager
        // Number of medal earned in the current level
        (vars.bestMedal =         new MemoryWatcher<int>(new DeepPointer((int)relPtr+0x472, 0x24, 0x4, 0x0, 0x2C, 0x34))),
        // Id/code of the current level
        (vars.levelCode =         new MemoryWatcher<int>(new DeepPointer((int)relPtr+0x472, 0x24, 0x4, 0x0, 0x2C, 0x74))),
        // Total number of medals while in the main menu. Otherwise total number of rainbow medals
        (vars.numMedals =         new MemoryWatcher<int>(new DeepPointer((int)relPtr+0x472, 0x24, 0x4, 0x0, 0x38))),
        // Id of the current batch
        (vars.lookingAtBatchNum = new MemoryWatcher<int>(new DeepPointer((int)relPtr+0x472, 0x24, 0x4, 0x0, 0x40))),

        // GUIManager
        // The active GUI screen being displayed
        (vars.activeScreen = new MemoryWatcher<int>(new DeepPointer((int)relPtr+0x568, 0x24, 0x4, 0x0, 0x20)))
    };

    vars.UpdateResetTracker();

    refreshRate = 200/3d;
}

start {
    // Runs start when the player hits "Play" on the main menu and has cleared their medal data or has 45 Classics category checked
  return vars.activeScreen.Old == vars.GUIScreen_MainMenu && vars.activeScreen.Current == vars.GUIScreen_BatchSelect && (vars.numMedals.Old == 0 || settings["category_45classics"]);
}

update {
    vars.watchers.UpdateAll(game);

    // Update old local variables
    vars.oldSumMedals = vars.curSumMedals;
    vars.oldFullBatches = vars.curFullBatches;
    vars.oldRainbowBatches = vars.curRainbowBatches;
    vars.oldCompletedBatches = vars.curCompletedBatches;
    
    // Update when the medal count change in the current level
  if(vars.levelCode.Old != 0 && vars.bestMedal.Old < vars.bestMedal.Current) {
        int indexOfLevel = Array.IndexOf(vars.levelsCode[vars.lookingAtBatchNum.Current], vars.levelCode.Current);
        vars.levelsMedals[vars.lookingAtBatchNum.Current][indexOfLevel] = vars.bestMedal.Current;
        vars.curSumMedals += vars.bestMedal.Current-vars.bestMedal.Old;

        // Recalculation of batches
        bool batchIsFull, batchIsRainbow, batchIsCompleted;
        vars.curFullBatches = vars.curRainbowBatches = vars.curCompletedBatches = 0;
        for (int batchId = 0; batchId < vars.levelsMedals.Length; batchId++) {
            int[] batchMedals = vars.levelsMedals[batchId];
            batchIsFull = batchIsRainbow = batchIsCompleted = true;
            for (int levelId = 0; levelId < batchMedals.Length; levelId++) {
                if(batchMedals[levelId] == 0) {
                    if(levelId < 5) {
                        batchIsFull = batchIsRainbow = batchIsCompleted = false;
                        break;
                    } else if (levelId == 5 && (batchId == 4 || batchId == 8)) {
                        batchIsFull = batchIsRainbow = false;
                    } else {
                        batchIsFull = false;
                    }
                }
            }
            if(batchIsFull) ++vars.curFullBatches;
            if(batchIsRainbow) ++vars.curRainbowBatches;
            if(batchIsCompleted) ++vars.curCompletedBatches;
        }
    }

    // Increase reset count if track is reseted
    if(settings["reset_tracking"] && vars.activeScreen.Old == vars.GUIScreen_InGame && vars.activeScreen.Current == vars.GUIScreen_PreGame) {
        ++vars.totalResets;
        vars.UpdateResetTracker();
    }
}

split {
    if(settings["category_any"]) {
        // Check if a new batch is unlocked
        if(vars.oldSumMedals < vars.curSumMedals) {
            for (int id = 0; id < vars.anyMedalsUnlock.length; id++) {
                if(vars.oldSumMedals < vars.anyMedalsUnlock[id] && vars.curSumMedals >= vars.anyMedalsUnlock[id])
                    return settings["any_"+vars.anyMedalsUnlock[id]];
            }
        }
        // Special split for credits when level is completed without checking for medals
        if(vars.levelCode.Current == 97 && vars.activeScreen.Old == vars.GUIScreen_InGame && vars.activeScreen.Current == vars.GUIScreen_PostGame)
            return settings["any_credits"];

        // Checks for specific levels when completed with at least bronze medal
        if(vars.IsCurrentLevelCompleted(false)) {
            if(vars.levelCode.Current == 19) return settings["any_the_wall"];
            if(vars.levelCode.Current == 31) return settings["any_pinball"];
            if(vars.levelCode.Current == 82) return settings["any_kentinator"];
        }
    } else if(settings["category_all_levels"]) {
        return (settings["all_levels_track"] && vars.IsCurrentLevelCompleted(false)) ||
               (settings["all_levels_batch"] && vars.oldCompletedBatches < vars.curCompletedBatches);
    } else if(settings["category_all_rainbows"]) {
        return (settings["all_rainbows_track"] && vars.IsCurrentLevelCompleted(true)) ||
               (settings["all_rainbows_batch"] && vars.oldRainbowBatches < vars.curRainbowBatches);
    } else if(settings["category_hundo"]) {
        return (settings["hundo_track"] && vars.IsCurrentLevelCompleted(true)) ||
               (settings["hundo_batch"] && vars.oldFullBatches < vars.curFullBatches);
    } else if(settings["category_45classics"] && vars.activeScreen.Old == vars.GUIScreen_InGame && vars.activeScreen.Current == vars.GUIScreen_PostGame) {
        return settings["45classics_track"] || (settings["45classics_batch"] && Array.IndexOf(vars.classicBatchEnd, vars.levelCode.Current) != -1);
    }
}

reset {
    // Automatically reset when going to the main menu while having no medal except if 45 Classics category is checked
  return vars.activeScreen.Old != vars.activeScreen.Current && vars.activeScreen.Current == vars.GUIScreen_MainMenu && (vars.numMedals.Current == 0 || settings["category_45classics"]);
}

isLoading {
    // Ignore time spent loading and in cutscenes, as well as network-based latency, such as submitting scores to the Steam leaderboards when on the post game screen
  return vars.activeScreen.Current == vars.GUIScreen_Loading || vars.activeScreen.Current == vars.GUIScreen_PostGame || vars.activeScreen.Current == vars.GUIScreen_Cutscene;
}

shutdown {
    timer.OnStart -= vars.ResetVars;
}