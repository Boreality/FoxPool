/// @desc
draw_self();
if(my_state = state.dialogue) {
	with(instance_create_layer(x,y-60,"Text",obj_text)) {
		text= other.dialogue[other.dialogue_num]; 
		text_color = other.text_color;	
	}
}


