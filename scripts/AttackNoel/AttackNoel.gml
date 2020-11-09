// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AttackNoel(){
	if (sprite_index != sNoelAttack) {
		//animation
		audio_play_sound(sndAttack, 10, false);
		sprite_index = sNoelAttack;
		localFrame = 0;
		image_index = 0;
		//ckear hit list
		if (!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
			ds_list_clear(hitByAttack);
		}
		
	}
CalcAttackNoel(sAttackJoanHB);

PlayerAnimation();

if (animationEnd) {
	state = PlayerStateIdleNoel;
	animationEnd = false;
}
}