///@desc event_load_dialogue(chance of responding, csv filename)
///@arg rec_chance
///@arg filename
///@arg ID
//Returns an array for all possible dialogue for this event

var rec_chance = argument0;
var filename = argument1;
var ID = argument2

if(irandom_range(0,100)<=rec_chance){
	event_dialogue[0]="";
	var dia_temp = csv_to_grid(filename,true);
	for(var i =0;i<ds_grid_height(dia_temp);i++){
			event_dialogue[i] = ds_grid_get(dia_temp,0,i);
	}
	ds_grid_destroy(dia_temp);
	with(argument2) {
		my_state = state.dialogue;
		event_dialogue = other.event_dialogue;
	}
	
}





