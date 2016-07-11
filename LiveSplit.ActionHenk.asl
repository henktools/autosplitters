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
  int tornado           : "ActionHenk.exe", 0x00A364A4, 0x48c,  0x68, 0x1fc, 0x4f4;
  int spaghetti         : "ActionHenk.exe", 0x00A364A4, 0x48c,  0x68, 0x1fc, 0x42c;
  int boing             : "ActionHenk.exe", 0x00A364A4, 0x48c,  0x68, 0x1fc, 0x364;
  int easy_peasy        : "ActionHenk.exe", 0x00A364A4, 0x48c,  0x68, 0x1fc, 0x29c;
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
  int full_stop         : "ActionHenk.exe", 0x00A2FBB0, 0x154,  0x8c, 0x534,  0x34;
  int the_wall          : "ActionHenk.exe", 0x00A2FBB0, 0x154, 0x644, 0x67c, 0x73c;
  int spinebreaker      : "ActionHenk.exe", 0x00A2FBB0, 0x154, 0x644, 0x67c, 0x674;
  int pinball           : "ActionHenk.exe", 0x00A2FBB0, 0x154, 0x644, 0x67c, 0x5ac;
  int kentinator        : "ActionHenk.exe", 0x00A2FBB0, 0x154, 0x644, 0x67c, 0x4e4;
  int afronaut          : "ActionHenk.exe", 0x00A2FBB0, 0x154, 0x644, 0x67c, 0x41c;
  // Back to the City
  int transition_kings  : "ActionHenk.exe", 0x00A2FBB0, 0x154, 0x644, 0x67c, 0x354;
  int hardcore_hooks    : "ActionHenk.exe", 0x00A2FBB0, 0x154, 0x644, 0x67c, 0x28c;
  int hi_speed_hysteria : "ActionHenk.exe", 0x00A2FBB0, 0x154, 0x644, 0x67c, 0x1c4;
  int ultimate_test     : "ActionHenk.exe", 0x00A2FBB0, 0x154, 0x644, 0x67c,  0xfc;
  int way_of_the_ninja  : "ActionHenk.exe", 0x00A2FBB0, 0x154, 0x644, 0x67c,  0x34;
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
  // load removal
  settings.Add("load_removal", false, "Load Removal");
  settings.SetToolTip("load_removal", "Load Removal pauses the timer during load times, cutscenes, and the post-game menus.");
}

init {
  // Number of medals the player had/has earned.
  vars.old_sum_of_medals = 0;
  vars.new_sum_of_medals = 0;
  // Level ID for checking when the credits have been completed.
  vars.credits_level_id = 97;
  // Values of the GUIScreens enum used to indicate which state is currently active.
  vars.state_main_menu        =  1;
  vars.state_loading          =  5;
  vars.state_cutscene         = 11; // Actually GUIScreen_None.
  vars.state_post_game        = 10;
  vars.state_batch_selection  = 37;
  vars.state_level_selection  = 14;
  // Doesn't seem to always get set when the credits roll.
  vars.state_credits          = 12;

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

    // The run is finished when the player has beaten Kentinator and finished
    // playing the Credits level. The split should only occur when on the post
    // game screen. Otherwise, starting splits on the main menu without clearing
    // medal data will immediately run through all of the splits.
    if( current.kentinator == 1 &&
        current.last_level == vars.credits_level_id &&
        current.game_state == vars.state_post_game) return true;
  }

  // If none of the above conditions have been met, do not split.
  return false;
}

update {
  // Determine the total number of medals the player had earned in the last interval.
  vars.old_sum_of_medals = old.hello_world + old.buttslide_basics + old.loop_of_density + old.back_2_back + old.hot_feet +
    old.the_classic + old.sweet_flow + old.multipath + old.pro_skater + old.wall_tricks +
    old.tornado + old.spaghetti + old.boing + old.easy_peasy + old.party_hardy +
    old.getting_hooked + old.smooth_swinging + old.halfway_hook + old.the_drop + old.close_call +
    old.gotta_ghost_fast + old.wicked_waves + old.cursed_curves + old.deadly_drops + old.tricks_treats +
    old.rise_n_shine + old.pipe_n_slide + old.quick_tricks + old.wave_rider + old.down_the_tube +
    old.deep_dive + old.the_plunger + old.the_big_climb + old.sad_snails + old.leap_of_faith +
    old.full_swing_ahead + old.hook_maze + old.throwback + old.flappy_swing + old.right_round_baby +
    old.sick_burn + old.full_stop + old.the_wall + old.spinebreaker + old.pinball +
    old.transition_kings + old.hardcore_hooks + old.hi_speed_hysteria + old.ultimate_test + old.way_of_the_ninja +
    old.the_highway + old.back_and_forth + old.slidey_slidey + old.bumper_jumper + old.the_zigzag;

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
  if(settings["load_removal"]) {
    // We want to ignore time spent loading and in cutscenes, as well as any
    // network-based latency, such as submitting scores to the Steam leaderboards
    // when on the post game screen.
    return
      current.game_state == vars.state_loading ||
      current.game_state == vars.state_cutscene ||
      current.game_state == vars.state_post_game;
  }
}
