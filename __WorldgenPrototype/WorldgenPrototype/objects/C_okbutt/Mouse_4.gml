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

biomeUsed = choose(biomes.airy,biomes.dirt,biomes.quarry)

show_debug_message(string(array_last(biomeUsed)))

for (var i = 0; i <worldHeight; i++){
    var tempRow = []
    
    for (var j = 0; j <worldWidth; j++){
        
        var block = biomeUsed[irandom(array_length(biomeUsed)-2)]
        array_push(tempRow,block)
        
    }
    
    
    show_debug_message(string(tempRow))
    
    
    
}

