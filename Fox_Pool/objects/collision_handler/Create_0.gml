/// @description Handle ball collision
ball1=0;
ball2=0;

//destroying other collision handlers
if(instance_count > 1) instance_find(collision_handler,0);

//Collision code

var b1 = global.ball1;
var b2 = global.ball2;

var init_b1_hsp= b1.hsp;
var init_b1_vsp= b1.vsp;
var init_b1_dir= b1.direction;

var init_b2_hsp= b2.hsp;
var init_b2_vsp= b2.vsp;
var init_b2_dir= b2.direction;


//ball1
b1.hsp= init_b2_hsp;
b1.vsp= init_b2_vsp;
b1.direction = init_b2_dir;

//ball2 (assumed dom thought false)
b2.hsp= init_b1_hsp;
b2.vsp= init_b1_vsp;
b2.direction = init_b1_dir;


//Applying all the weird shit seperate to the direct math

//ball1
b1.hsp *= b1.chick_bounce_deliver_multiplier;
b1.vsp *= b1.chick_bounce_deliver_multiplier;

//ball2
b2.hsp *= b2.chick_bounce_recieve_multiplier;
b2.vsp *= b2.chick_bounce_recieve_multiplier;



//only problem is that I need a way to tell who the *dominant* ball is
//sothat I can tell wich one to shoot backways from its own speed rather than follow the dom's
//speed

instance_destroy();