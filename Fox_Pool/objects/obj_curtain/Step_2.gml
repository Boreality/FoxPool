/// @description Raising and Falling

switch(toggle){
	case 1: //raised
		y = Approach(y,0,96);
		if(instance_exists(obj_dark)) instance_destroy(obj_dark);
	break;
	case -1: // falling
		y = Approach(y,768,48);
		if(!instance_exists(obj_dark)) && (y =768){
			with(instance_create_layer(0,0,"Cursor",obj_dark)){
				image_xscale=16;
				image_yscale=16;
				image_alpha=0.3;
			}
		}
	break;
}
