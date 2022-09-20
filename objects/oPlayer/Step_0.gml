xMove = keyboard_check(vk_right) - keyboard_check(vk_left);
yMove = keyboard_check(vk_down) - keyboard_check(vk_up);

if (xMove != 0 || yMove != 0) {
	sprite_index = sPlayerRun_strip7;
} else {
	sprite_index = sPlayerIdle_strip4;
}

if (xMove != 0) image_xscale = xMove;

x += xMove * spd;
y += yMove * spd;

cd--;

if (cd <= 0 && keyboard_check(ord("Z"))) {
	cd = cdValue;
	audio_play_sound(aSpell, 1, false);
	with (instance_create_layer(x, y, "bullets", oBullet)) {
		direction = oGun.image_angle;
		speed = 4;
	}
}