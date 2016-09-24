///hurt_state()

sprite_index = spr_player_hurt
if (hspd != 0)  image_xscale = sign(hspd)


// Apply gravity
if (!place_meeting(x, y+1, Solid)) {
    vspd += grav;
} else {
    vspd = 0
    apply_friction(acc)
}

direction_move_bounce(Solid)  
