//Size Variables
screenWidth = display_get_gui_width();
screenHeight = display_get_gui_height();
h_half = screenHeight * 0.5;
enum TRANS_MODE {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;