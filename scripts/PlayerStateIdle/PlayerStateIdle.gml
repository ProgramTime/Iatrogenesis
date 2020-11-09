// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateIdle(){

Collision();

//Animation
if (!place_meeting(x, y + 1, oWall)) {
	sprite_index = sJoan_Jump;
	image_speed = 0;
	if (sign(vsp) > 0) { //Falling
		image_index = 1;
	}
	else {
		image_index = 0;
	}
}
else {
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sJoan;
	}
	else {
		sprite_index = sJoan_Walk;
	}
}

if (hsp != 0) {
	image_xscale = sign(hsp);
}

//Change State Attack
if (key_attack) {
	state = PlayerStateAttack;
	stateAttack = AttackJoan;
}
}