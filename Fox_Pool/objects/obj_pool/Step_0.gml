///// @desc
key_hit = mouse_check_button_pressed(mb_left);

//key_cancel = mouse_check_button_pressed(mb_right);


////setting stage
//switch(cue_mode){
//	case cue.freemove:
//		x = mouse_x;
//		y = mouse_y;
	
//		if(key_hit) 
//		{
//			//find slope
//			//xy1 is cue, xy2 is target
//			m = (target.y- y)/(target.x-x);
//			cue_mode = cue.aim;
			
			
			
//		}
//	break;
//	case cue.aim:
//		//at this point, the cue can only move towards or away from the ball
//		//how to implement: find equation of line, funnel x and y through it
		
		
//		//setting x,y
//		x = mouse_x;
//		y = mouse_y;
	
		
//		hsp = ((y+target.y)/m)+target.x;
//		vsp = (m*(x-target.x)) + target.y;
			
			
//		//	((y+target.y)/m)+target.x;
//		//y = (m*(x-target.x)) + target.y;
//	break;
//	case cue.watch:
	
	
//	break;
//}



x = mouse_x;
y = mouse_y;



if(key_hit){
	hsp += lengthdir_x(30,direction);
	vsp += lengthdir_y(30,direction);
}

hsp = Approach(hsp,0,2);
vsp = Approach(vsp,0,2);

x+=hsp;
y+=vsp;

direction = point_direction(x,y,obj_fox.x,obj_fox.y);
image_angle = direction;


