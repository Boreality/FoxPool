/// @desc

switch(my_state){
	case state.idle:
		
		dialogue_num = irandom_range(0,2);
	break
	case state.dialogue:
		dialogue_timer--;
		if(dialogue_timer<=0){
			my_state = state.idle;	
			dialogue_timer = dialogue_timer_max;	
		}
		
	break;

}