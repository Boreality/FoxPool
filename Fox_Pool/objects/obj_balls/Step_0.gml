/// @desc
//Bounce back
if(place_meeting(x+hsp,y,obj_balls)){
	hsp=-hsp;
}
if(place_meeting(x,y+vsp,obj_balls)){
	vsp=-vsp	;
}

//ball_collider = collision_circle(x,y,25,obj_balls,true,true);	
//if(ball_collider != noone){
//	with(ball_collider){
//	hsp = other.hsp;
//	vsp= other.vsp;
//	hsp=-hsp;
//	vsp=-vsp;
//	}
//}