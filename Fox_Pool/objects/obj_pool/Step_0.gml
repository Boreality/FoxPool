/// @desc

x = mouse_x;
y = mouse_y;


//hitting
key_hit = mouse_check_button_pressed(mb_left);
if(key_hit){
	hsp += lengthdir_x(30,direction);
	vsp += lengthdir_y(30,direction);
}



x+=hsp;
y+=vsp;

direction = point_direction(x,y,obj_fox.x,obj_fox.y);
image_angle = direction;


