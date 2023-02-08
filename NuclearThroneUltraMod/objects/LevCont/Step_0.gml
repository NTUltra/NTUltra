__view_set( e__VW.XView, 0, 0 )
__view_set( e__VW.YView, 0, 0 )
if UberCont.opt_gamemode == 28 || UberCont.opt_gamemode == 38//ALL MUTATION CHOICES
{
	var spd = 18;
	if mouse_wheel_down() || keyboard_check_pressed(vk_right){
		if scroll < scrollWidth
		{
			with SkillIcon {
				x -= spd;
			}
			with UltraIcon {
				x -= spd;
			}
			scroll += spd;
		}
		
	}
	else if mouse_wheel_up() || keyboard_check_pressed(vk_left){
		if scroll > 0 
		{
			with SkillIcon {
				x += spd;
			}
			with UltraIcon {
				x += spd;
			}
			scroll -= spd;
		}
	}
}