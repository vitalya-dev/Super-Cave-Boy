///move_state()

var right = keyboard_check(vk_right)
var left = keyboard_check(vk_left)
var up = keyboard_check(vk_up)
var up_release = keyboard_check_released(vk_up)
var down = keyboard_check(vk_down)

if (!place_meeting(x, y+1, Solid)) {
    // Player in the air
    vspd += grav
    sprite_index = spr_player_jump
    image_speed = 0
    image_index = vspd > 0
    // Control the jump
    if (up_release && vspd < -6) {
        vspd = -6
    }
} else {
    vspd = 0
    // Jump checking
    if (up) {
        vspd = -16
    }
    
    // Player on the ground
    if (hspd == 0) {
        sprite_index = spr_player_idle
    } else {
        sprite_index = spr_player_walk
        image_speed = 0.6
    }
}


if (right || left) {
    hspd += (right - left)*acc
    if (hspd > spd) hspd = spd
    if (hspd < -spd) hspd = -spd
} else {
    apply_friction(acc)
}

if (hspd != 0) {
    image_xscale = sign(hspd)
}






move(Solid)


// Check for ledge grab state
var falling = y - yprevious > 0
var wasnt_wall = !position_meeting(x+17*image_xscale, yprevious, Solid)
var is_wall = position_meeting(x+17*image_xscale, y, Solid)

if (falling && wasnt_wall && is_wall) {
    while (!place_meeting(x+image_xscale, y, Solid)) {
        x += image_xscale
    }
    while (position_meeting(x+17*image_xscale, y-1, Solid)) {
        y -= 1
    }
    hspd = 0
    vspd = 0
    image_index = spr_player_edge_grab
    state = ledge_grab_state
}



