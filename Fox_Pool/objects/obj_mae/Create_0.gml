/// @desc
event_register_script(event.dialogue,id,make_dialogue);
dialogue[0] = "Well this is just great";
dialogue[1] = "Meow";
dialogue[2] = "Poor Casey";

dialogue_timer_max=2*room_speed;
dialogue_timer=dialogue_timer_max;

dialogue_num =0;

enum state {
	dialogue,
	idle,
	moving
}
my_state=state.idle;
text_color=c_blue;