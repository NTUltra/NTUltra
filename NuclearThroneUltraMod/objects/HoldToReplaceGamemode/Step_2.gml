/// @description Position
x = UberCont.mouse__x + 16;
y = UberCont.mouse__y + 16;
if !mouse_check_button(mb_left)
{
	instance_destroy();
}
