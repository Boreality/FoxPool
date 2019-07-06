/// @desc

switch(my_state){
	case state.idle:
		if(idle_check){
			dialogue_num = irandom_range(0,24);
			idle_check=false;
		}
		dialogue_check=true;
		conversation_check=true;
	break
	case state.dialogue:
		dialogue_timer--;
		if(dialogue_timer<=0){
			my_state = state.idle;	
			dialogue_timer = dialogue_timer_max;	
		}
		idle_check=true;
		conversation_check=true;
	break;
	case state.conversation:
		if(conversation_check){
			event_unregister(event.dialogue,id);
			conversation_check=false;
		}
		idle_check=true;
		dialogue_check=true;
	 break;

}