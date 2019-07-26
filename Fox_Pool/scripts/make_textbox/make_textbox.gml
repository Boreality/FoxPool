if(textbox == noone){
	with(instance_create_layer(x,y-60,"Text",obj_text)) {
		text= other.event_dialogue[other.dialogue_num]; 
		text_color = other.text_color;	
		owner = other.id;
		other.textbox=id;
	}
}else{
	instance_destroy(textbox);

	textbox=noone;	
	with(instance_create_layer(x,y-60,"Text",obj_text)) {
		text= other.event_dialogue[other.dialogue_num]; 
		text_color = other.text_color;	
		owner = other.id;
		other.textbox=id;
	}
}