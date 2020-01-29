state("ActionHenk") {
  // Values found by faultyserver

  // The last level that the player has completed. Gets set to 0 when the game is
  // started, and changes pretty much immediately after a level is completed.
  int last_level        : "ActionHenk.exe", 0x00A31788, 0x20, 0x7e8, 0x780, 0x7f8;

  // The current GUI screen being displayed. Used to remove load times.
  int game_state        : "mono.dll",       0x001f20ac, 0x364,  0x4c,  0xd8, 0x4b0;


  // // LEVELS // //
  // Back in Action
  int hello_world       : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x748, 0x28c;
  int buttslide_basics  : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x748, 0x1c4;
  int loop_of_density   : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x748,  0xfc;
  int back_2_back       : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x748,  0x34;
  int hot_feet          : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x3c8, 0x73c;
  int betsy             : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x3c8, 0x674;
  int swan_henk         : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x3c8, 0x5ac;
  // Throttle Wide Open
  int the_classic       : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x3c8, 0x4e4;
  int sweet_flow        : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x3c8, 0x41c;
  int multipath         : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x3c8, 0x354;
  int pro_skater        : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x3c8, 0x28c;
  int wall_tricks       : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x3c8, 0x1c4;
  int boxing_betsy      : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x3c8,  0xfc;
  int corporate_betsy   : "ActionHenk.exe", 0x00A363D8, 0x770,  0x68, 0x3c8,  0x34;
  // The Fever
  int tornado           : "ActionHenk.exe", 0x00A364A4, 0x65c, 0x228,  0x14, 0x4f4;
  int spaghetti         : "ActionHenk.exe", 0x00A364A4, 0x65c, 0x228,  0x14, 0x42c;
  int boing             : "ActionHenk.exe", 0x00A364A4, 0x65c, 0x228,  0x14, 0x364;
  int easy_peasy        : "ActionHenk.exe", 0x00A364A4, 0x65c, 0x228,  0x14, 0x29c;
  int party_hardy       : "ActionHenk.exe", 0x00A363E0, 0x76c,  0x70,  0xb8, 0x1c4;
  int neils_challenge   : "ActionHenk.exe", 0x00A363E0, 0x76c,  0x70,  0xb8,  0xfc;
  int gabber_betsy      : "ActionHenk.exe", 0x00A363E0, 0x76c,  0x70,  0xb8,  0x34;
  // Hold on Tight
  int getting_hooked    : "mono.dll",       0x001f20ac, 0x54c, 0x1fc, 0x720, 0x73c;
  int smooth_swinging   : "mono.dll",       0x001f20ac, 0x54c, 0x1fc, 0x720, 0x674;
  int halfway_hook      : "mono.dll",       0x001f20ac, 0x54c, 0x1fc, 0x720, 0x5ac;
  int the_drop          : "mono.dll",       0x001f20ac, 0x54c, 0x1fc, 0x720, 0x4e4;
  int close_call        : "mono.dll",       0x001f20ac, 0x54c, 0x1fc, 0x720, 0x41c;
  int betsys_hook       : "mono.dll",       0x001f20ac, 0x54c, 0x1fc, 0x720, 0x354;
  int it_neil           : "mono.dll",       0x001f20ac, 0x54c, 0x1fc, 0x720, 0x28c;
  // Spooky Times
  int gotta_ghost_fast  : "mono.dll",       0x001f20ac, 0x54c, 0x1fc, 0x720, 0x1c4;
  int wicked_waves      : "mono.dll",       0x001f20ac, 0x54c, 0x1fc, 0x720,  0xfc;
  int cursed_curves     : "mono.dll",       0x001f20ac, 0x54c, 0x1fc, 0x720,  0x34;
  int deadly_drops      : "mono.dll",       0x001f20ac, 0x54c, 0x1d4, 0x67c, 0x41c;
  int tricks_treats     : "mono.dll",       0x001f20ac, 0x54c, 0x1d4, 0x67c, 0x354;
  int kentony           : "mono.dll",       0x001f20ac, 0x54c, 0x1d4, 0x67c, 0x28c;
  int zombie_neil       : "mono.dll",       0x001f20ac, 0x54c, 0x1d4, 0x67c, 0x1c4;
  // No Diving
  int rise_n_shine      : "mono.dll",       0x001f20ac, 0x54c, 0x1d4, 0x67c,  0xfc;
  int pipe_n_slide      : "mono.dll",       0x001f20ac, 0x54c, 0x1d4, 0x67c,  0x34;
  int quick_tricks      : "mono.dll",       0x001f20ac, 0x54c, 0x1d4, 0x720,  0x34;
  int wave_rider        : "mono.dll",       0x001f20ac, 0x54c, 0x184, 0x15c, 0x41c;
  int down_the_tube     : "mono.dll",       0x001f20ac, 0x54c, 0x184, 0x15c, 0x354;
  int lifegaurd_betsy   : "mono.dll",       0x001f20ac, 0x54c, 0x184, 0x15c, 0x28c;
  int summer_henk       : "mono.dll",       0x001f20ac, 0x54c, 0x184, 0x15c, 0x1c4;
  // Feet in the Sand
  int deep_dive         : "mono.dll",       0x001F20ac, 0x54c, 0x184, 0x15c,  0xfc;
  int the_plunger       : "mono.dll",       0x001F20ac, 0x54c, 0x184, 0x15c,  0x34;
  int the_big_climb     : "mono.dll",       0x001F20AC, 0x54c, 0x184, 0x348, 0x1c4;
  int sad_snails        : "mono.dll",       0x001F20AC, 0x54c, 0x184, 0x348,  0xfc;
  int leap_of_faith     : "mono.dll",       0x001F20AC, 0x54c, 0x184, 0x348,  0x34;
  int cedar             : "mono.dll",       0x001F20AC, 0x54c, 0x134,  0xb8, 0x73c;
  int rastafro          : "mono.dll",       0x001F20AC, 0x54c, 0x134,  0xb8, 0x674;
  // King of the Jungle
  int full_swing_ahead  : "mono.dll",       0x001F20AC, 0x54c, 0x134,  0xb8, 0x5ac;
  int hook_maze         : "mono.dll",       0x001F20AC, 0x54c, 0x134,  0xb8, 0x4e4;
  int throwback         : "mono.dll",       0x001F20AC, 0x54c, 0x134,  0xb8, 0x41c;
  int flappy_swing      : "mono.dll",       0x001F20AC, 0x54c, 0x134,  0xb8, 0x354;
  int right_round_baby  : "mono.dll",       0x001F20AC, 0x54c, 0x134,  0xb8, 0x28c;
  int jungle_cedar      : "mono.dll",       0x001F20AC, 0x54c, 0x134,  0xb8, 0x1c4;
  int tribal_cedar      : "mono.dll",       0x001F20AC, 0x54c, 0x134,  0xb8,  0xfc;
  // Night Crisis
  int sick_burn         : "mono.dll",       0x001F20AC, 0x54c, 0x134,  0xb8,  0x34;
  int full_stop         : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74,  0xb8,  0x34;
  int the_wall          : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74, 0x7c4, 0x73c;
  int spinebreaker      : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74, 0x7c4, 0x674;
  int pinball           : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74, 0x7c4, 0x5ac;
  int kentinator        : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74, 0x7c4, 0x4e4;
  int afronaut          : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74, 0x7c4, 0x41c;
  // Back to the City
  int transition_kings  : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74, 0x7c4, 0x354;
  int hardcore_hooks    : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74, 0x7c4, 0x28c;
  int hi_speed_hysteria : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74, 0x7c4, 0x1c4;
  int ultimate_test     : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74, 0x7c4,  0xfc;
  int way_of_the_ninja  : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x74, 0x7c4,  0x34;
  int nineties_henk     : "mono.dll",       0x001f20ac, 0x2ac, 0x524, 0x2c8, 0x73c;
  int action_hank       : "mono.dll",       0x001f20ac, 0x2ac, 0x524, 0x2c8, 0x674;
  // All I Want for Henkmas
  int the_highway       : "mono.dll",       0x001f20ac, 0x2ac, 0x524, 0x2c8, 0x5ac;
  int back_and_forth    : "mono.dll",       0x001f20ac, 0x2ac, 0x524, 0x2c8, 0x4e4;
  int slidey_slidey     : "mono.dll",       0x001f20ac, 0x2ac, 0x524, 0x2c8, 0x41c;
  int bumper_jumper     : "mono.dll",       0x001f20ac, 0x2ac, 0x524, 0x2c8, 0x354;
  int the_zigzag        : "mono.dll",       0x001f20ac, 0x2ac, 0x524, 0x2c8, 0x28c;
  int santa_henk        : "mono.dll",       0x001f20ac, 0x2ac, 0x524, 0x2c8, 0x1c4;
  int henkdolph         : "mono.dll",       0x001f20ac, 0x2ac, 0x524, 0x2c8,  0xfc;
  // Credits - currently unused, because the credits level does not reward a medal.
  int credits           : "mono.dll",       0x001f20ac, 0x2ac, 0x524, 0x2c8,  0x34;
}

startup {
  // Any% splitting
  settings.Add("category_any", true, "Any% Splitting");
  settings.SetToolTip("category_any", "Full auto-splitting for Any% runs.");
  // All Levels splitting
  settings.Add("category_all_levels", false, "All Levels Splitting");
  settings.SetToolTip("category_all_levels", "Full auto-splitting for All Levels runs.");
  // All Rainbows splitting
  settings.Add("category_all_rainbows", false, "All Rainbows Splitting");
  settings.SetToolTip("category_all_rainbows", "Full auto-splitting for All Rainbows runs.");
  // 100% splitting
  settings.Add("category_hundo", false, "100% Splitting");
  settings.SetToolTip("category_hundo", "Full auto-splitting for 100% runs.");
  // load removal
  settings.Add("load_removal", false, "Load Removal");
  settings.SetToolTip("load_removal", "Load Removal pauses the timer during load times, cutscenes, and the post-game menus.");
}

init {
  // Number of medals the player had/has earned.
  vars.old_sum_of_medals     = 0;
  vars.new_sum_of_medals     = 0;
  // Number of batches the player had/has completed (counts if all normal levels are completed with at least bronze).
  vars.old_batches_completed = 0;
  vars.new_batches_completed = 0;
  // Number of perfect batches the player had/has completed (counts if all normal levels are completed with rainbow).
  vars.old_perfect_batches   = 0;
  vars.new_perfect_batches   = 0;
  // Number of batches the player had/has fully completed (counts if all normal levels are completed with rainbow, and the challenge and bonus level were beaten).
  vars.old_full_batches      = 0;
  vars.new_full_batches      = 0;
  // Level ID for checking when the credits have been completed.
  vars.credits_level_id      = 97;
  // Values of the GUIScreens enum used to indicate which state is currently active.
  vars.state_main_menu       =  1;
  vars.state_loading         =  5;
  vars.state_cutscene        = 11; // Actually GUIScreen_None.
  vars.state_post_game       = 10;
  vars.state_batch_selection = 37;
  vars.state_level_selection = 14;
  // Doesn't seem to always get set when the credits roll.
  vars.state_credits         = 12;

  // Enforce the current comparison to be against Game Time instead of Real Time.
  // timer.CurrentComparison != IGT: timer.currentComparison = IGT;
}


split {
  // Only try to split if a category is selected in the options
  if(settings["category_any"]) {
    // Splits are based on the number of medals a player has earned. The number
    // of medals for each split follows the number of medals required to unlock
    // each new batch of levels.
    if(vars.old_sum_of_medals <  7) return vars.new_sum_of_medals >=  7;
    if(vars.old_sum_of_medals < 16) return vars.new_sum_of_medals >= 16;
    if(vars.old_sum_of_medals < 27) return vars.new_sum_of_medals >= 27;
    if(vars.old_sum_of_medals < 38) return vars.new_sum_of_medals >= 38;
    if(vars.old_sum_of_medals < 43) return vars.new_sum_of_medals >= 43;
    if(vars.old_sum_of_medals < 57) return vars.new_sum_of_medals >= 57;
    if(vars.old_sum_of_medals < 72) return vars.new_sum_of_medals >= 72;
    if(vars.old_sum_of_medals < 85) return vars.new_sum_of_medals >= 85;
    if(vars.old_sum_of_medals >= 85 &&
       current.kentinator == 1 &&
       old.kentinator == 0) return true;

    // The run is finished when the player has beaten Kentinator and finished
    // playing the Credits level. The split should only occur when on the post
    // game screen. Otherwise, starting splits on the main menu without clearing
    // medal data will immediately run through all of the splits.
    if( current.kentinator == 1 &&
        current.last_level == vars.credits_level_id &&
        current.game_state == vars.state_post_game) return true;
  }
  else if(settings["category_all_levels"]) {
    // Splits are based on the number of batches marked as complete
    return vars.new_batches_completed == vars.old_batches_completed + 1;
  }
  else if(settings["category_all_rainbows"]) {
    return vars.new_perfect_batches == vars.old_perfect_batches + 1;
  }
  else if(settings["category_hundo"]) {
    return vars.new_full_batches == vars.old_full_batches + 1;
  }

  // If none of the above conditions have been met, do not split.
  return false;
}

update {
  // Determine the total number of medals the player had earned in the last interval.
  vars.old_sum_of_medals = vars.new_sum_of_medals;

  // Determine the total number of medals the player has now earned in the current interval.
  vars.new_sum_of_medals = current.hello_world + current.buttslide_basics + current.loop_of_density + current.back_2_back + current.hot_feet +
    current.the_classic + current.sweet_flow + current.multipath + current.pro_skater + current.wall_tricks +
    current.tornado + current.spaghetti + current.boing + current.easy_peasy + current.party_hardy +
    current.getting_hooked + current.smooth_swinging + current.halfway_hook + current.the_drop + current.close_call +
    current.gotta_ghost_fast + current.wicked_waves + current.cursed_curves + current.deadly_drops + current.tricks_treats +
    current.rise_n_shine + current.pipe_n_slide + current.quick_tricks + current.wave_rider + current.down_the_tube +
    current.deep_dive + current.the_plunger + current.the_big_climb + current.sad_snails + current.leap_of_faith +
    current.full_swing_ahead + current.hook_maze + current.throwback + current.flappy_swing + current.right_round_baby +
    current.sick_burn + current.full_stop + current.the_wall + current.spinebreaker + current.pinball +
    current.transition_kings + current.hardcore_hooks + current.hi_speed_hysteria + current.ultimate_test + current.way_of_the_ninja +
    current.the_highway + current.back_and_forth + current.slidey_slidey + current.bumper_jumper + current.the_zigzag;

  // The old new is the new old.
  vars.old_batches_completed = vars.new_batches_completed;

  // A batch is complete if each level in the batch was completed with at least the bronze medal.
  vars.new_batches_completed = ((old.hello_world      > 0 && old.buttslide_basics > 0 && old.loop_of_density   > 0 && old.back_2_back   > 0 && old.hot_feet         > 0)                        ? 1 : 0) + 
                               ((old.the_classic      > 0 && old.sweet_flow       > 0 && old.multipath         > 0 && old.pro_skater    > 0 && old.wall_tricks      > 0)                        ? 1 : 0) +
                               ((old.tornado          > 0 && old.spaghetti        > 0 && old.boing             > 0 && old.easy_peasy    > 0 && old.party_hardy      > 0)                        ? 1 : 0) +
                               ((old.getting_hooked   > 0 && old.smooth_swinging  > 0 && old.halfway_hook      > 0 && old.the_drop      > 0 && old.close_call       > 0)                        ? 1 : 0) +
                               ((old.gotta_ghost_fast > 0 && old.wicked_waves     > 0 && old.cursed_curves     > 0 && old.deadly_drops  > 0 && old.tricks_treats    > 0 && old.kentony == 1)    ? 1 : 0) +
                               ((old.rise_n_shine     > 0 && old.pipe_n_slide     > 0 && old.quick_tricks      > 0 && old.wave_rider    > 0 && old.down_the_tube    > 0)                        ? 1 : 0) +
                               ((old.deep_dive        > 0 && old.the_plunger      > 0 && old.the_big_climb     > 0 && old.sad_snails    > 0 && old.leap_of_faith    > 0)                        ? 1 : 0) +
                               ((old.full_swing_ahead > 0 && old.hook_maze        > 0 && old.throwback         > 0 && old.flappy_swing  > 0 && old.right_round_baby > 0)                        ? 1 : 0) +
                               ((old.sick_burn        > 0 && old.full_stop        > 0 && old.the_wall          > 0 && old.spinebreaker  > 0 && old.pinball          > 0 && old.kentinator == 1) ? 1 : 0) +
                               ((old.transition_kings > 0 && old.hardcore_hooks   > 0 && old.hi_speed_hysteria > 0 && old.ultimate_test > 0 && old.way_of_the_ninja > 0)                        ? 1 : 0) +
                               ((old.the_highway      > 0 && old.back_and_forth   > 0 && old.slidey_slidey     > 0 && old.bumper_jumper > 0 && old.the_zigzag       > 0)                        ? 1 : 0);

  // The old new is the new old.
  vars.old_perfect_batches   = vars.new_perfect_batches;

  // A batch is perfect if each level in the batch was completed with the rainbow medal.
  vars.new_perfect_batches   = ((old.hello_world      == 4 && old.buttslide_basics == 4 && old.loop_of_density   == 4 && old.back_2_back   == 4 && old.hot_feet         == 4)                        ? 1 : 0) + 
                               ((old.the_classic      == 4 && old.sweet_flow       == 4 && old.multipath         == 4 && old.pro_skater    == 4 && old.wall_tricks      == 4)                        ? 1 : 0) +
                               ((old.tornado          == 4 && old.spaghetti        == 4 && old.boing             == 4 && old.easy_peasy    == 4 && old.party_hardy      == 4)                        ? 1 : 0) +
                               ((old.getting_hooked   == 4 && old.smooth_swinging  == 4 && old.halfway_hook      == 4 && old.the_drop      == 4 && old.close_call       == 4)                        ? 1 : 0) +
                               ((old.gotta_ghost_fast == 4 && old.wicked_waves     == 4 && old.cursed_curves     == 4 && old.deadly_drops  == 4 && old.tricks_treats    == 4 && old.kentony == 1)    ? 1 : 0) +
                               ((old.rise_n_shine     == 4 && old.pipe_n_slide     == 4 && old.quick_tricks      == 4 && old.wave_rider    == 4 && old.down_the_tube    == 4)                        ? 1 : 0) +
                               ((old.deep_dive        == 4 && old.the_plunger      == 4 && old.the_big_climb     == 4 && old.sad_snails    == 4 && old.leap_of_faith    == 4)                        ? 1 : 0) +
                               ((old.full_swing_ahead == 4 && old.hook_maze        == 4 && old.throwback         == 4 && old.flappy_swing  == 4 && old.right_round_baby == 4)                        ? 1 : 0) +
                               ((old.sick_burn        == 4 && old.full_stop        == 4 && old.the_wall          == 4 && old.spinebreaker  == 4 && old.pinball          == 4 && old.kentinator == 1) ? 1 : 0) +
                               ((old.transition_kings == 4 && old.hardcore_hooks   == 4 && old.hi_speed_hysteria == 4 && old.ultimate_test == 4 && old.way_of_the_ninja == 4)                        ? 1 : 0) +
                               ((old.the_highway      == 4 && old.back_and_forth   == 4 && old.slidey_slidey     == 4 && old.bumper_jumper == 4 && old.the_zigzag       == 4)                        ? 1 : 0);

  // The old new is the new old.
  vars.old_full_batches      = vars.new_full_batches;

  // A batch is perfect if each level in the batch was completed with the rainbow medal.
  vars.new_full_batches      = ((old.hello_world      == 4 && old.buttslide_basics == 4 && old.loop_of_density   == 4 && old.back_2_back   == 4 && old.hot_feet         == 4 && old.betsy == 1           && old.swan_henk == 1)       ? 1 : 0) + 
                               ((old.the_classic      == 4 && old.sweet_flow       == 4 && old.multipath         == 4 && old.pro_skater    == 4 && old.wall_tricks      == 4 && old.boxing_betsy == 1    && old.corporate_betsy == 1) ? 1 : 0) +
                               ((old.tornado          == 4 && old.spaghetti        == 4 && old.boing             == 4 && old.easy_peasy    == 4 && old.party_hardy      == 4 && old.neils_challenge == 1 && old.gabber_betsy == 1)    ? 1 : 0) +
                               ((old.getting_hooked   == 4 && old.smooth_swinging  == 4 && old.halfway_hook      == 4 && old.the_drop      == 4 && old.close_call       == 4 && old.betsys_hook == 1     && old.it_neil == 1)         ? 1 : 0) +
                               ((old.gotta_ghost_fast == 4 && old.wicked_waves     == 4 && old.cursed_curves     == 4 && old.deadly_drops  == 4 && old.tricks_treats    == 4 && old.kentony == 1         && old.zombie_neil == 1)     ? 1 : 0) +
                               ((old.rise_n_shine     == 4 && old.pipe_n_slide     == 4 && old.quick_tricks      == 4 && old.wave_rider    == 4 && old.down_the_tube    == 4 && old.lifegaurd_betsy == 1 && old.summer_henk == 1)     ? 1 : 0) +
                               ((old.deep_dive        == 4 && old.the_plunger      == 4 && old.the_big_climb     == 4 && old.sad_snails    == 4 && old.leap_of_faith    == 4 && old.cedar == 1           && old.rastafro == 1)        ? 1 : 0) +
                               ((old.full_swing_ahead == 4 && old.hook_maze        == 4 && old.throwback         == 4 && old.flappy_swing  == 4 && old.right_round_baby == 4 && old.jungle_cedar == 1    && old.tribal_cedar == 1)    ? 1 : 0) +
                               ((old.sick_burn        == 4 && old.full_stop        == 4 && old.the_wall          == 4 && old.spinebreaker  == 4 && old.pinball          == 4 && old.kentinator == 1      && old.afronaut == 1)        ? 1 : 0) +
                               ((old.transition_kings == 4 && old.hardcore_hooks   == 4 && old.hi_speed_hysteria == 4 && old.ultimate_test == 4 && old.way_of_the_ninja == 4 && old.nineties_henk == 1   && old.action_hank == 1)     ? 1 : 0) +
                               ((old.the_highway      == 4 && old.back_and_forth   == 4 && old.slidey_slidey     == 4 && old.bumper_jumper == 4 && old.the_zigzag       == 4 && old.santa_henk == 1      && old.henkdolph == 1)       ? 1 : 0);

  return true;
}

start {
  // Runs start when the player hits "Play" on the main menu and has cleared
  // their medal data.
  return
    old.game_state == vars.state_main_menu &&
    current.game_state == vars.state_batch_selection &&
    vars.new_sum_of_medals == 0;
}

reset {
  // Automatically reset when the player has no medal data and is in the main menu
  return
    current.game_state == vars.state_main_menu &&
    vars.new_sum_of_medals == 0;
}

isLoading {
  // We want to ignore time spent loading and in cutscenes, as well as any
  // network-based latency, such as submitting scores to the Steam leaderboards
  // when on the post game screen.
  return
    current.game_state == vars.state_loading ||
    current.game_state == vars.state_cutscene ||
    current.game_state == vars.state_post_game;
}
