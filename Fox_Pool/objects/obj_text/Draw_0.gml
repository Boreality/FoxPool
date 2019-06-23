/// @desc
var halfw = w/2;

//draw boox
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,30,30,false);
draw_sprite(spr_mark,0,x,y);
draw_set_alpha(1);

//draw teext
draw_set_text(text_color,fnt_dialogue,fa_center,fa_top);
draw_text(x,y-h-border,text_current);

draw_set_text(c_white,fnt_dialogue,fa_center,fa_top);

