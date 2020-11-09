draw_set_color(c_white);
draw_set_font(fFont);
draw_text(10, 10, "Lifeclock Countdown:");
draw_text(350, 10,string(floor(alarm[0]/room_speed)));
//draw_text(50, 50, string(alarm[0]));