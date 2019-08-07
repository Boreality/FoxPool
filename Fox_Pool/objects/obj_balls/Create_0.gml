/// @desc
vsp = 0;
hsp = 0;
ball_collider = noone;
hitcheck = true;
still = true;
collider = noone;
sector = 0;
dir = 0;
global.ball1 = noone;
global.ball2 = noone;
global.advance_dialogue = false;
//determining vars
pool_hittable = false;
chick_grav = false;
chick_fox = false;
chick_bounce_recieve_multiplier = 1; 
chick_bounce_deliver_multiplier = 1; 
chick_move_others = false; //when hitting another chick ball, makes that ball bounce away like regular balls
chick_anti = false;
friction_toggle = true;
animation_spin_toggle = true;
collision_wall_toggle = true;