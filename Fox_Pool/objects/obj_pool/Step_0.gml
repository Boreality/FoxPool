///// @desc

if(alt_action){
	key_hit = true;
	alt_action=false;
}else{
	key_hit=false;	
}

if(grabber!=noone){
	x = grabber.x;
	y = grabber.y;

	direction = point_direction(x,y,obj_fox.x,obj_fox.y);
	image_angle = direction;



	if(key_hit){
		hsp += lengthdir_x(30,direction);
		vsp += lengthdir_y(30,direction);
	}

	hsp = Approach(hsp,0,2);
	vsp = Approach(vsp,0,2);

	x+=hsp;
	y+=vsp;
}



