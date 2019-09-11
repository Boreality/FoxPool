draw_set_font(fnt_debug);

draw_text(5,10,"Pool Test");
if(instance_exists(obj_fox)){
	draw_text(5,30,"dir: "+string(obj_fox.dir));
	draw_text(5,50,"Collidor: "+string(obj_fox.collider));
	draw_text(5,70,"Sector: "+string(obj_fox.sector));
	draw_text(5,90,"Cue X: " + string(obj_pool.x));
	draw_text(5,110,"Cue y: " + string(obj_pool.y));
}
draw_text(5,130,"Event hit: "+ string(event_hit));

//making text onto the thingy

