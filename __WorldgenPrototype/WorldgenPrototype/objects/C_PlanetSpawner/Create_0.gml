random_set_seed(randomise())
planetsToCreate = irandom_range(3,20)


for (var i = 0; i < planetsToCreate; i++){
    //instance_create_layer(x,y,"Instances",C_Planet)
    instance_create_depth(x,y,irandom_range(1000,10000),C_Planet)

}