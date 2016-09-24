///sname_move_right_state()
var wall_meeting = place_meeting(x + 1, y, Solid)
var ledge_at_right = !position_meeting(bbox_right + 1, bbox_bottom + 1, Solid)

if (wall_meeting || ledge_at_right) {
    state = snake_move_left_state
}



// Control the snake sprite
image_xscale = 1

// Move the snake
x += 1
