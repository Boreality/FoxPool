/// @desc


dialogue_timer--;
if(dialogue_timer<=0){
	event_fire(event.dialogue);	
	dialogue_timer = dialogue_timer_max;
}


