/// @desc

switch(my_state){
	case state.idle:
	#region
		event_register_script(event.hit,id,event_load_dialogue,100,hit_filename,id);
		event_register_script(event.speed,id,event_load_dialogue,100,speed_filename,id);
		
		dialogue_check=true;
		conversation_check=true;
	#endregion
	break;
	case state.dialogue:
	#region
		if(dialogue_check){
			dialogue_num = irandom_range(0,array_length_1d(event_dialogue)-1); //MINUS ONE MIGHT MESS WITH CONVERSATIONS
			
			make_textbox();
			
			dialogue_check=false;
			my_state = state.idle;	
		}
		
		idle_check=true;
		conversation_check=true;
	#endregion
	break;
	case state.conversation:
	#region
		if(conversation_check){
			event_unregister(event.hit,id);
			event_unregister(event.speed,id);
			
			if(instance_exists(textbox)) instance_destroy(textbox);
			
			conversation_check=false;
		}
		idle_check=true;
		dialogue_check=true;
	#endregion
	 break;

}