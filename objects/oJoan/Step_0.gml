//Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);
key_attack = keyboard_check_pressed(ord("A"));
key_activate = keyboard_check_pressed(vk_space);

//Movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

if (place_meeting(x, y + 1, oWall)) && (key_jump) {
	vsp = -13;
}

if (global.gamePaused == false) {
	script_execute(state);
}