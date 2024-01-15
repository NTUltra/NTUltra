__view_set( e__VW.XView, 0, 0 )
__view_set( e__VW.YView, 0, 0 )
if scrIsGamemode(28)//ALL MUTATION CHOICES
{
	var spd = 24;
	if mouse_wheel_down() || keyboard_check_pressed(vk_right){
		if scroll <= scrollWidth
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
if KeyCont.key_west[0] == 1
{
	selectedIndex -= 1;
	if instance_exists(UltraIcon)
	{
		if selectedIndex < 0
		{
			selectedIndex = instance_number(UltraIcon) + instance_number(SkillIcon) - 1;
		}
		with UltraIcon
		{
			if skillIndex == other.selectedIndex
				selected = true;
			else
				selected = false;
		}
	}
	else if instance_exists(SkillIcon)
	{
		if selectedIndex < 0
			selectedIndex = instance_number(SkillIcon) - 1;
	}
	with SkillIcon
	{
		if skillIndex == other.selectedIndex
			selected = true;
		else
			selected = false;
	}
	
}
else if KeyCont.key_east[0] == 1
{
	selectedIndex += 1;
	if instance_exists(UltraIcon)
	{
		if selectedIndex > instance_number(UltraIcon) + instance_number(SkillIcon)- 1
			selectedIndex = 0;
		with UltraIcon
		{
			if skillIndex == other.selectedIndex
				selected = true;
			else
				selected = false;
		}
	}
	else if instance_exists(SkillIcon)
	{
		if selectedIndex > instance_number(SkillIcon) - 1
			selectedIndex = 0;
	}
	with SkillIcon
	{
		if skillIndex == other.selectedIndex
			selected = true;
		else
			selected = false;
	}
}