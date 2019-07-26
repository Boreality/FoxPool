/// @desc
//event_register_script(event.dialogue,id,make_dialogue);
event_register_script(event.hit,id,event_load_dialogue,100,hit_filename,id);
event_register_script(event.speed,id,event_load_dialogue,100,speed_filename,id);

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

event_dialogue = 0;

textbox=noone;


//Getting Dialogue
//10 unique random quips
//5 for scoring a point
//5 for hitting fox (rarer)
//5 quips for how fast shits going



//Now have full dialogue 
