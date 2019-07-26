/// @desc progress txt
letters+=spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fnt_dialogue);
if(h==0) h = string_height(text);
w = string_width(text_current);
//destroy when done

var enable_text_timer = false;

if(enable_text_timer){
	if(letters >= length){
		text_timer--;
		if(text_timer<=0){
			instance_destroy();	
			owner.textbox=noone;
		}
	}
}
if(keyboard_check(ord("E"))){
	instance_destroy();	
	owner.textbox=noone;
}
