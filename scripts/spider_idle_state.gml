/// spider_idle_state()

if (instance_exists(Player)) {
    var dis = distance_to_object(Player)
    
    if (dis < sigh && alarm[0] <= 0) {
        image_speed = 0.5
        
        // Make sure we facing the player
        if (Player.x != x) {
            image_xscale = sign(Player.x - x)
        }
    }
}
