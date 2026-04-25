function syllable(syllableChoice){
    
    
    var start =  ["K'y","Ry","Sh","Dr","Pr","Bl","Sl","Or","Ad","Ax","Z","Yor","Vy","Ash","Oy","Az","Orph","Ph","Gl","Gar","Tar","Kab","Rez","Un"]
    //var vowels = ["a","e","i","o","u"]
    var blends = ["ak'y","esh","att","ador","idar","ed","ur","ur'z","ab","idr","isl","ell","","ok","oz","ott","orz","ark","ik"]
    var codas =  ["ang","ile","or","as","ophi","apax","orex","aflox","oshy","ixia","ut-arx","ole-xyn","a'zir","a'zar","o-bor","ebyr","e'fae","isyn","ium","ior","ion","eon"]
    
    var chosenFrag = ""
    
    if (syllableChoice == "start"){
        chosenFrag = start[irandom(array_length(start)-1)]
    }
    
    //else if (syllableChoice == "vowels"){
        //chosenFrag = vowels[irandom(array_length(vowels)-1)]
    //}
    
    else if (syllableChoice == "blends"){
        var sep = irandom(5)
        if (sep == 0){chosenFrag+="'"}
        
        
        
        chosenFrag += blends[irandom(array_length(blends)-1)]
    }
    
    else if (syllableChoice == "codas"){
        chosenFrag = codas[irandom(array_length(codas)-1)]
    }
    
    return chosenFrag
    
    
}


function create_planet_name(){
    

    
    var name = ""
    var nameLength = irandom_range(2,3)
    
    for (var i = 0; i <= nameLength; i++){
        
       if (i == 0){
        name += syllable("start")
        } 
        
       else if (i < nameLength) && (i > 0){
            name += syllable("blends")
        }
       else if (i == nameLength){
            name += syllable("codas")
        }
        
    }
    
    return name
}




