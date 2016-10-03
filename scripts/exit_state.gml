///exit_state

if (image_alpha > 0) 
    image_alpha -= .25
else {
    if (room != room_last) {
        room_goto_next()
    } else {
        room_goto(m_highscore)
    }
}

    
