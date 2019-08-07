/// @description Insert description here
// You can write your code in this editor


/*
 when selected, create a rectangle in the bottom right that shows all the different 'faces' or frames that
 the character can do.
 For loop style.

*/

//device_mouse_x_to_gui()
var h = display_get_gui_height();
var w = display_get_gui_width();
var h_half = h/2;
var w_half = w/2;
var h_third = h/3;
var w_third = w/3;

if(false){ //condition when made, to make later
	//rectange
	draw_rectangle_color(w_third*2,h_third*2,w,h,c_black,c_black,c_black,c_gray,false);
	//Text
	draw_set_font(fnt_debug);
	draw_text(w_third*2.1+10,h_third*2+10,"Face Options");
	
	
	for(var i =0; i<image_number;i++){
		draw_text(w_third*2.1+10,h_third*2+50 +(25*i),"Option "+ string(i) + ": ");
	}

}