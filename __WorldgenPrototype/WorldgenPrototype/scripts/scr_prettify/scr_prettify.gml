function planet_colour(){
    col_martian_dust      = make_colour_hsv(10,  180, 200);  // warm rusty red-orange
    col_io_sulphur        = make_colour_hsv(28,  210, 230);  // sickly yellow-orange
    col_venus_haze        = make_colour_hsv(22,  140, 220);  // pale peachy amber
    col_titan_smog        = make_colour_hsv(18,  160, 160);  // murky brownish orange
    col_neptune_deep      = make_colour_hsv(148, 230, 210);  // rich cobalt blue
    col_uranus_mist       = make_colour_hsv(130, 160, 230);  // soft icy cyan
    col_europa_ice        = make_colour_hsv(140, 80,  245);  // almost-white pale blue
    col_ganymede_slate    = make_colour_hsv(148, 120, 170);  // muted slate blue
    col_jovian_cream      = make_colour_hsv(25,  100, 240);  // soft creamy band
    col_great_red_spot    = make_colour_hsv(8,   220, 190);  // deep brick red
    col_nebula_violet     = make_colour_hsv(188, 200, 200);  // dusty purple
    col_pulsar_teal       = make_colour_hsv(120, 200, 200);  // deep teal-green
    col_saturn_gold       = make_colour_hsv(32,  180, 235);  // warm sandy gold
    col_ring_ice          = make_colour_hsv(135, 60,  250);  // near-white icy shimmer
    col_cosmic_rose       = make_colour_hsv(230, 160, 210);  // muted dusty pink
    col_void_indigo       = make_colour_hsv(175, 220, 140);  // deep space indigo
    col_pluto_mauve       = make_colour_hsv(210, 130, 180);  // grey-purple cold tone
    col_cryovolcano       = make_colour_hsv(155, 180, 220);  // blue-violet cold burst
    col_magnetar_crimson  = make_colour_hsv(245, 230, 200);  // deep desaturated crimson
    col_ejecta_ochre      = make_colour_hsv(22,  200, 175);  // dark impact ochre
    
    planetPalette = [col_martian_dust,col_io_sulphur,col_venus_haze,col_titan_smog,col_neptune_deep,col_uranus_mist,col_europa_ice,col_ganymede_slate,col_jovian_cream,col_great_red_spot,col_nebula_violet,col_pulsar_teal,col_saturn_gold,col_ring_ice,col_cosmic_rose,col_void_indigo,col_pluto_mauve,col_cryovolcano,col_magnetar_crimson,col_ejecta_ochre]

    colourChoice = planetPalette[irandom(array_length(planetPalette) - 1)]
    
    return colourChoice

}



function colour_triad(rgb){
    var h = colour_get_hue(rgb)
    var s = colour_get_saturation(rgb)
    var v = colour_get_value(rgb)
    
    
    //get triad
    var h2 = (h + 85) mod 255
    var h3 = (h + 170) mod 255
    
    //pick a triadic colour
    var i = irandom(2)
    if i == 0{
        return make_colour_hsv(h2,s * 0.85,v * 0.9)
    }
    else{
        return make_colour_hsv(h3,s * 0.85,v * 0.9)
    }
    
    
}