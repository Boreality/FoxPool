///@desc make_text_custom
///@arg text

if(textbox == noone){
	with(instance_create_layer(x,y-60,"Text",obj_text)) {
		text= argument0; 
		text_color = other.text_color;	
		owner = other.id;
		other.textbox=id;
	}
}else{
	instance_destroy(textbox);

	textbox=noone;	
	with(instance_create_layer(x,y-60,"Text",obj_text)) {
		text= argument0; 
		text_color = other.text_color;	
		owner = other.id;
		other.textbox=id;
	}
}