///exit_state

if (image_alpha > 0) 
    image_alpha -= .25
else {
    if (room != room_last) {
        room_goto_next()
    } else {
        score = PlayerStats.sapphires
        
        // Read highscore
        ini_open("Settings_12345.ini")
        PlayerStats.highscore = ini_read_real("Score", "Highscore", 0)
        
        // A new highscore case
        if (score > PlayerStats.highscore) {
            PlayerStats.highscore = score
            ini_write_real("Score", "Highscore", score)
        }
        
        // We are done with ini
        ini_close()
        
        room_goto(m_highscore)
    }
}

    
