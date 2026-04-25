function pick(arr) {
    return arr[irandom(array_length(arr) - 1)];
}

function weighted(arr, bias) {
    var pool = [];
    for (var i = 0; i < array_length(arr); i++) {
        var repeats = (i < bias) ? 2 : 1;
        for (var j = 0; j < repeats; j++) {
            array_push(pool, arr[i]);
        }
    }
    return pick(pool);
}

function make_syllable() {
    var vowels = ["a","e","i","o","u","ae","ea","io","oo","oy"];
    var consonants = ["b","d","g","k'","v","s","m","n","l","r","h","y","x"];
    var blends = ["ada","a-ga","ata","k'ya","k'yo","sha","sho","sh-u","eda","edo","exa","exo","et'o","all","ell","yan","yix","yin","phi","pax","pal","pau","dor","dar","tor","tar","uda","uro","ur'z", "br","bl","dr","kr","kl","sl"];
    var codas = ["", "n","m","l","r","s","k","d",];

    var onset;
    if (random(1) < 0.25) {
        onset = pick(blends);
    } else {
        onset = pick(consonants);
    }

    if (random(1) < 0.15) {
        onset = "";
    }

    var vowel = weighted(vowels, 3);
    var coda = weighted(codas, 3);

    return onset + vowel + coda;
}

function planet_name() {
    var syllables = irandom_range(2, 3);
    var name = "";

    for (var i = 0; i < syllables; i++) {
        name += make_syllable();
    }

    return string_upper(string_copy(name, 1, 1)) + string_delete(name, 1, 1);
}