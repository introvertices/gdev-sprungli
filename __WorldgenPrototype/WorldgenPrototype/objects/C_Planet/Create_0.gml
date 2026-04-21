scaling = random_range(0.1,2)
c_1 = make_colour_rgb(irandom(255), irandom(255), irandom(255))


x = irandom(room_width)
y = irandom(room_height)
spawnAngle = irandom(365)

//distanceAway = irandom_range(1000,10000)
distanceAway = depth

show_debug_message("I'm at " +string(x) +"," +string(y) + " on layer " +string(distanceAway))


