
key_click = mouse_check_button_pressed(mb_left);
key_click_alt = mouse_check_button_pressed(mb_right);

//f0llowing mouse
x = mouse_x;
y = mouse_y;

if(key_click){
	if(holding==noone){
		grab_obj = collision_point(x,y,obj_grab,true,true);
		if(grab_obj!=noone)&&(grab_obj.grab){
			grab_obj.grabber=other.id;
			holding = grab_obj;
			image_index=1;
		}
	}else{
		grab_obj.grabber=noone;
		holding	= -4;
		image_index=0;
	}
}
if(key_click_alt){
	if(holding!=noone) holding.alt_action=true;
}
