//var collision_joueur = collision_rectangle(2000, 2000, 2000, 2000, obj_player, false, true);
////if collision_joueur != noone
////{
////	instance_destroy(obj_piege);
////	obj_piege.sprite_index = spr_piege_ac;
////
////}
//if collision_joueur =! noone
//{
//	{	
//		obj_piege.sprite_index = spr_piege_ac;
//	}
//}
//else
//	{

/////////////////////


//while (timer)
//{
//	obj_piege.sprite_index = spr_piege_inac;
//	}

//var _can_activate = !is_active && trap_cooldown_timer = 0;




//// TODO
//// indenter les fonctions les unes dans les autres
////
//var _activation_attente = function()
//{
//	obj_piege.sprite_index = spr_piege_pre;	
//}

//var _activation_duree = function()
//{
//	obj_piege.sprite_index = spr_piege_ac;
//	//show_message("Your message here");	
//}

//var _desactivation_duree = function()
//{
//	obj_piege.sprite_index = spr_piege_inac;
//	is_active = false;
//	can_activate = true;
//}

//if (can_activate == true && is_active == false) {
//	//obj_piege.sprite_index = spr_piege_inac;
//	// Set the trap flag to true 
//	is_active = true;	
//	// Set the trap duration timer to the defined trap duration
//	trap_duration_timer = TRAP_ACCTIVATION_DURATION_MS;
//	// Set the dash cooldown timer to the sum of the dash duration and the dash cooldown
//	trap_cooldown_timer = TRAP_ACCTIVATION_DURATION_MS + TRAP_ACCTIVATION_TIME_MS;
	
//	trap_activation_timer = TRAP_ACCTIVATION_TIME_MS;
//}

//if ((is_active == true)) //&& (can_activate == true))
//{	
//	can_activate = false;
//	var _test_time = time_source_create(time_source_game,trap_activation_timer,time_source_units_frames,_activation_attente);
//	time_source_start(_test_time);    
//	trap_activation_timer = 0
//	var _test_time2 = time_source_create(time_source_game,trap_duration_timer,time_source_units_seconds,_activation_duree);
//	time_source_start(_test_time2);
	
//	var _test_time3 = time_source_create(time_source_game,trap_cooldown_timer,time_source_units_seconds,_desactivation_duree);
//	time_source_start(_test_time3);
	
//}
//else{
//	is_active = false;
//	obj_piege.sprite_index = spr_piege_inac;
//}

/// Create Event
// Initialize variables
/// Step Event
// Update transition timer using delta time

/// Collision Event with Player
if (state == 0 && transition_timer <= 0) {
    // Change to warning state after 1 second delay
    transition_timer = transition_delay; // Start timer for next state transition
    state = 1;
}