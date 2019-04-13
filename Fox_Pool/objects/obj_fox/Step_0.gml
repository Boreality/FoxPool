/// @desc

// Inherit the parent event
event_inherited();


//Hitting Physics
collider = collision_circle(x,y,25,obj_pool,true,true);	
if(collider != noone){
	if(collider.key_hit){
		audio_play_sound(snd_pong,5,0);
	

		//WITH VSP AND HSP
		if(collider != noone){
	
			var chsp = collider.hsp;
			var cvsp = collider.vsp;
	
			#region
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



//friction
if(hsp != 0){	
	hsp = Approach(hsp,0,0.1);
}
if(vsp != 0){
	vsp = Approach(vsp,0,0.1);
}


//when still
if(hsp==0)&&(vsp==0){
	still = true;
}else{
	still = false;	
	
	//animation
	image_angle+= abs(hsp+vsp)*2;
	
}

x+=hsp;
y+=vsp;

