///sname_move_right_state()
var wall_meeting = place_meeting(x - 1, y, Solid)
var ledge_at_left = !position_meeting(bbox_left - 1, bbox_bottom + 1, Solid)

if (wall_meeting || ledge_at_left) {
    state = snake_move_right_state
}



// Control the snake sprite
image_xscale = -1

// Move the snake
x -= 1
