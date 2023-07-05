/// @description Position
if (keyboard_check(vk_space) && instance_exists(GameModeUpDown))
{
	alarm[2] = 5;
	x = round(GameModeUpDown.x-14);
	y = round(GameModeUpDown.y+64);
}
else if alarm[2] < 1
{
	x = UberCont.mouse__x + 16;
	y = UberCont.mouse__y + 16;
}
if !mouse_check_button(mb_left) && !keyboard_check(vk_space)
{
	instance_destroy();
}
