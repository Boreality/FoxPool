/// @desc

#region//Pool to ball hit manager
if(pool_hittable){	
	collider = collision_circle(x,y,25,obj_pool,true,true);	
	if(collider != noone){
		if(collider.key_hit){
			audio_play_sound(snd_pong,5,0);
			event_fire(event.ballHits);
			//WITH VSP AND HSP
			if(collider != noone){
				var chsp = collider.hsp;
				var cvsp = collider.vsp;

	            var cspeed = collider.speed;
				#region old trig code. might use?
				//figuring out sector
				//if(chsp > 0) and (cvsp > 0){ //sector 1
				//	sector=1;
				//}else{
				//	if(chsp < 0) and (cvsp > 0){ //sector 2
				//		sector=2;
				//	}else{
				
				//		if(chsp < 0) and (cvsp < 0){ //sector 3
				//			sector=3;
				//		}else{	//sector 4
				//			sector=4;
				//		}
				//	}
				//}
	
				//var eq_c = sqrt((sqr(chsp)+sqr(cvsp)));
				//var eq_0 = arcsin((cvsp/eq_c));
	
				//determining sector
				//switch(sector){
				//	case 2:
				//		dir = abs(eq_0-180);
				//	break
				//	case 3:
				//		dir = abs(eq_0+180);
				//	break;
				//	case 4:
				//		dir = abs(eq_0-360);
				//	break;
				//}
		
				//direction = dir;
				//speed = spd;
		
		
				//push cue back
		
				//with(collider){
				//	hsp -= lengthdir_x(50,other.dir);
				//	vsp -= lengthdir_y(50,other.dir);
				//}
				#endregion
				//FAAAST
				var spd = 0.1*(abs(chsp) + abs(cvsp));
				vsp += lengthdir_y(spd,collider.direction);
				hsp += lengthdir_x(spd,collider.direction);
			}
		}	
	}	
}
#endregion

#region friction

if(hsp != 0){
	hsp = Approach(hsp,0,0.1);
}
if(vsp != 0){
	vsp = Approach(vsp,0,0.1);
}

#endregion

#region animation swing

//when still
if(hsp==0)&&(vsp==0){
	still = true;
}else{
	still = false;
	
	//animation
	image_angle+= abs(hsp+vsp)*2;
	
}
#endregion

#region//Collisions between balls
ball_collider = instance_place(x,y,obj_balls);
if(ball_collider != noone){
	global.ball1 = ball_collider;
	global.ball2 = id;	
	instance_create_layer(x,y,"Pool",collision_handler)
	ball_collider = -4;
} 
#endregion

#region wall collision

if(collision_wall_toggle){
	if(place_meeting(x+hsp,y,obj_wall)){
		hsp=-hsp;
	}
	if(place_meeting(x,y+vsp,obj_wall)){
		vsp=-vsp;
	}
}
#endregion

hsp = clamp(hsp,-30,30);
vsp = clamp(vsp,-30,30);


x+=hsp;
y+=vsp;