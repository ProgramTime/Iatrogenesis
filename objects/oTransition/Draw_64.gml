//Transition Scene
if (mode != TRANS_MODE.OFF) {
	draw_set_color(c_black);
	draw_rectangle(0, 0, screenWidth, percent*h_half, false);
	draw_rectangle(0, screenHeight, screenWidth, screenHeight - (percent * h_half), false);
}