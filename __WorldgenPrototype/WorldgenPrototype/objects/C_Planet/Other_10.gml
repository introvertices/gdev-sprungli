//movement


if (keyboard_check(vk_left)){
    //x += C_shipMoveView.shipViewSpeed * (distanceAway/100)
    x += (C_shipMoveView.shipViewSpeed / distanceAway) * 100
}

if (keyboard_check(vk_right)){
    //x -= C_shipMoveView.shipViewSpeed * (distanceAway/100)
    x -= (C_shipMoveView.shipViewSpeed / distanceAway) * 100
}

if (keyboard_check(vk_up)){
    //y += C_shipMoveView.shipViewSpeed * (distanceAway/100)
    y += (C_shipMoveView.shipViewSpeed / distanceAway) * 100
}

if (keyboard_check(vk_down)){
    //y -= C_shipMoveView.shipViewSpeed * (distanceAway/100)
    y -= (C_shipMoveView.shipViewSpeed / distanceAway) * 100
}