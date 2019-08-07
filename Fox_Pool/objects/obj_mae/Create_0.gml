//event_register_script(event.dialogue,id,make_dialogue);
event_register_script(event.hit,id,event_load_dialogue,100,hit_filename,id);
event_register_script(event.speed,id,event_load_dialogue,100,speed_filename,id);

dialogue_timer_max=2*room_speed;
dialogue_timer=dialogue_timer_max;
dialogue_num =0;
dialogue_check=true;
idle_check=true;
moving_check=true;
conversation_check=true;
event_dialogue = 0;
textbox=noone;

enum state {
	dialogue,
	idle,
	moving,
	conversation
}
my_state=state.idle;
//Getting Dialogue
//10 unique random quips
//5 for scoring a point
//5 for hitting fox (rarer)
//5 quips for how fast shits going

//Load dialogue into array
//THEN make script refer to proper array instead
event_hit[0] = "";
var dia_temp = csv_to_grid("mae_dialogue_hit.csv",true);
for(var i =0;i<ds_grid_height(dia_temp);i++){
		event_hit[i] = ds_grid_get(dia_temp,0,i);
}
ds_grid_destroy(dia_temp);

event_speed[0] = "";
var dia_temp = csv_to_grid("mae_dialogue_speed.csv",true);
for(var i =0;i<ds_grid_height(dia_temp);i++) event_speed[i] = ds_grid_get(dia_temp,0,i);
ds_grid_destroy(dia_temp);