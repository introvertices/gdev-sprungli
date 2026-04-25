
draw_sprite_ext(sp_planetTemp,image_UL,x,y,scaling,scaling,spawnAngle,c_1,1)
draw_sprite_ext(sp_planetTempOL,image_OL,x,y,scaling,scaling,spawnAngle,c_2,1)
draw_set_colour(c_black)
draw_set_halign(fa_center)
draw_text(x,y,string(distanceAway))
draw_set_halign(fa_left)
draw_set_colour(c_white)
