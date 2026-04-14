

if string_length(keyboard_string) > 20
{
    keyboard_string = string_copy(keyboard_string, 1, 20)
}

global.seedInput = keyboard_string