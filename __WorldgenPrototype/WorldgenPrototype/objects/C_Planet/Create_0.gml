scaling = random_range(0.25,1) // sprite is 750px-ish that's big enough for max size

name = planet_name()
show_debug_message(string(name))

speed = 0.1

image_speed = 0
image_UL = irandom(sprite_get_number(sp_planetTemp))
image_OL = irandom(sprite_get_number(sp_planetTempOL))


// colouring
c_1 = planet_colour()



c_2 = colour_triad(c_1)

x = irandom(room_width)
y = irandom(room_height)
spawnAngle = irandom(365)

//distanceAway = irandom_range(1000,10000)
distanceAway = depth

//distance away needs to affect scale, assume that Scaling is the size at 0 distance


show_debug_message("I'm at " +string(x) +"," +string(y) + " on layer " +string(distanceAway))

has_wrapped = false


