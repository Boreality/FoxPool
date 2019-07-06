/// @desc
event_register_script(event.dialogue,id,make_dialogue);


dialogue_timer_max=2*room_speed;
dialogue_timer=dialogue_timer_max;

dialogue_num =0;

enum state {
	dialogue,
	idle,
	moving,
	conversation
}
my_state=state.idle;


dialogue_check=true;
idle_check=true;
moving_check=true;
conversation_check=true;


//Getting Dialogue
//10 unique random quips
//5 for scoring a point
//5 for hitting fox (rarer)
//5 quips for how fast shits going


dialogue[0]="";
dia_temp = csv_to_grid(filename,true);
for(var i =0;i<ds_grid_height(dia_temp);i++){
		dialogue[i] = ds_grid_get(dia_temp,0,i);
}
ds_grid_destroy(dia_temp);

//Now have full dialogue 
