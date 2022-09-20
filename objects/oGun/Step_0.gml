x = oPlayer.x;
y = oPlayer.y;
xMove = keyboard_check(vk_right) - keyboard_check(vk_left);
yMove = keyboard_check(vk_down) - keyboard_check(vk_up);

if (xMove == 1 ){
image_angle = point_direction(oPlayer.x, oPlayer.y, x,y);
	layer = layer_get_id("gunback");
}

else if (xMove == -1 ){
image_angle = point_direction(oPlayer.x, oPlayer.y, x,y);
	layer = layer_get_id("gunback");
}