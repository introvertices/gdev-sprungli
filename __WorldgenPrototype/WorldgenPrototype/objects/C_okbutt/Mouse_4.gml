image_index = 1

// create seed
var hash = 0

for (var i=1; i<string_length(global.seedInput); i++){
    var tempByte = string_byte_at(global.seedInput,i)
    hash = (hash * 31 + tempByte) & 0xFFFFFFFF
    

}


global.seedConverted = hash
random_set_seed(global.seedConverted,true)
show_debug_message("Seed: " +string(global.seedConverted))
show_debug_message("Random number calling irandom 10: " +string(irandom(10)))
show_debug_message("Random number calling irandom 50: " +string(irandom(50)))
show_debug_message("Random number calling irandom 100: " +string(irandom(100)))
