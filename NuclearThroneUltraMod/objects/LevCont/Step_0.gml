__view_set( e__VW.XView, 0, 0 )
__view_set( e__VW.YView, 0, 0 )
with GameRender
{
	gamemodeDynamicHud = dynamicHudResetTime;
	mutationDynamicHud = dynamicHudResetTime;
}
if scrIsGamemode(28) || instance_exists(AllMutationsLeft)//ALL MUTATION CHOICES
{
	var spd = scrollSpeed;
	if mouse_wheel_down() {
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
	else if mouse_wheel_up(){
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
var switchingMenu = false;
var numberOfUltras = 0;
var thereIsAlt = false;
with UltraIcon
{
	if !isAlternative
	{
		numberOfUltras += 1;	
	}
	else
		thereIsAlt = true;
}
if KeyCont.key_west[0] == 1
{
	event_user(0);
	snd_play_2d(sndHover);
	selectedIndex -= 1;
	var hasSelectedSkill = false;
	var maxTries = 9999;
	if instance_exists(UltraIcon) || instance_exists(SkillIcon) || instance_exists(CrownIcon)
	do {
		if instance_exists(UltraIcon)
		{
			if selectedIndex < 0
			{
				selectedIndex = numberOfUltras + instance_number(SkillIcon) - 1;
			}
			debug(selectedIndex);
			with UltraIcon
			{
				if skillIndex == other.selectedIndex
				{
					selected = true;
					hasSelectedSkill = true;
				}
				else
					selected = false;
			}
		}
		else if instance_exists(SkillIcon)
		{
			if selectedIndex < 0
				selectedIndex = instance_number(SkillIcon) - 1;
		}
		else if instance_exists(CrownIcon)
		{
			if controllingSecondaryMenu && instance_exists(MultiCrownMenu)
			{
				hasSelectedSkill = true;
				if selectedIndex < -2
				{
					if MultiCrownMenu.selectedCrown != -1
						selectedIndex = -1;
					else
						selectedIndex = -2;
				}
				else if selectedIndex <= 0 || (selectedIndex > 0 && MultiCrownMenu.maxWidthCrowns > 0 && selectedIndex % MultiCrownMenu.maxWidthCrowns == 0)
				{
					selectedIndex += MultiCrownMenu.maxWidthCrowns;
				}
			}
			else
			{
				if selectedIndex == 11
					selectedIndex = instance_number(CrownIcon) - 1;
				if selectedIndex < 0
					selectedIndex = instance_number(CrownIcon) - 1 - 12;
				with CrownIcon
				{
					if rowPosition == other.selectedIndex
					{
						selected = true;
						hasSelectedSkill = true;
					}
					else
						selected = false;
				}
				controllingSecondaryMenu = false;
				previouslySelectedIndex = selectedIndex;
			}
		}
		with SkillIcon
		{
			if skillIndex == other.selectedIndex
			{
				hasSelectedSkill = true;
				selected = true;
				if x < camera_get_view_x(view_camera[0]) + 32 ||
				x > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 32
				{
					with other
					{
						var disto = other.x - (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) * 0.5)
						scroll += disto;
						with SkillIcon {
							x -= disto;
						}
						with UltraIcon {
							x -= disto;
						}
					}
				}
			}
			else
				selected = false;
		}
		maxTries -= 1;
	} until (hasSelectedSkill || maxTries < 1)
	
}
else if KeyCont.key_east[0] == 1
{
	event_user(0);
	snd_play_2d(sndHover);
	selectedIndex += 1;
	var hasSelectedSkill = false;
	var maxTries = 999;
	if instance_exists(UltraIcon) || instance_exists(SkillIcon) || instance_exists(CrownIcon)
	do {
		if instance_exists(UltraIcon)
		{
			if selectedIndex > numberOfUltras + instance_number(SkillIcon)- 1
				selectedIndex = 0;
			with UltraIcon
			{
				if skillIndex == other.selectedIndex
				{
					selected = true;
					hasSelectedSkill = true;
				}
				else
					selected = false;
			}
		}
		else if instance_exists(SkillIcon)
		{
			if selectedIndex > instance_number(SkillIcon) - 1
				selectedIndex = 0;
		}
		else if instance_exists(CrownIcon)
		{
			if controllingSecondaryMenu && instance_exists(MultiCrownMenu)
			{
				hasSelectedSkill = true;
				if selectedIndex == 0 || (selectedIndex < 0 && MultiCrownMenu.selectedCrown == -1)
				{
					selectedIndex = -2;	
				}
				else if selectedIndex > MultiCrownMenu.lastCrown
				{
					selectedIndex -= MultiCrownMenu.lastCrownRowWidth;
				}
				else if (selectedIndex - 1 > 0 && MultiCrownMenu.maxWidthCrowns > 0 && (selectedIndex - 1) % MultiCrownMenu.maxWidthCrowns == 0)
					selectedIndex -= MultiCrownMenu.maxWidthCrowns;
			}
			else 
			{
				if selectedIndex == 12
					selectedIndex = 0;
				else if selectedIndex > instance_number(CrownIcon) - 1
					selectedIndex = 12;
				with CrownIcon
				{
					if rowPosition == other.selectedIndex
					{
						selected = true;
						hasSelectedSkill = true;
					}
					else
						selected = false;
				}
				controllingSecondaryMenu = false;
				previouslySelectedIndex = selectedIndex;
			}
		}
		with SkillIcon
		{
			if skillIndex == other.selectedIndex
			{
				hasSelectedSkill = true;
				selected = true;
				if x < camera_get_view_x(view_camera[0]) + 32 ||
				x > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 32
				{
					with other
					{
						var disto = other.x - (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) * 0.5)
						scroll += disto;
						with SkillIcon {
							x -= disto;
						}
						with UltraIcon {
							x -= disto;
						}
					}
				}
			}
			else
				selected = false;
		}
		maxTries -= 1;
	}
	until (hasSelectedSkill || maxTries < 1)
}
else if KeyCont.key_sout[0] == 1
{
	event_user(0);
	if thereIsAlt
	{
		debug(frac(selectedIndex));
		var prevSelectedIndex = selectedIndex;
		if frac(selectedIndex) > 0
		{
			selectedIndex -= 0.5;	
		}
		else
		{
			selectedIndex += 0.5;
		}
		with UltraIcon
		{
			if skillIndex == other.selectedIndex
			{
				selected = true;
				hasSelectedSkill = true;
			}
			else
				selected = false;
		}
		if !hasSelectedSkill
		{
			selectedIndex = prevSelectedIndex;
		}
	}
	else if instance_exists(CrownIcon)
	{
		snd_play_2d(sndHover);
		if controllingSecondaryMenu && instance_exists(MultiCrownMenu)
		{
			if selectedIndex < 0
			{
				switchingMenu = true;
				controllingSecondaryMenu = false;
				selectedIndex = previouslySelectedIndex;
			}
			else
			{
				if selectedIndex + MultiCrownMenu.maxWidthCrowns >= MultiCrownMenu.lastCrown
					selectedIndex = -2;
				else
					selectedIndex += MultiCrownMenu.maxWidthCrowns;	
			}
		}
		else
		{
			if !UberCont.unlocked_more_crowns || selectedIndex + 12 > instance_number(CrownIcon) - 1
			{
				if instance_exists(MultiCrownMenu)
				{
					switchingMenu = true;
					controllingSecondaryMenu = true;
					selectedIndex = -2;
					if MultiCrownMenu.lastCrown >= 0
						selectedIndex = 1;
				}
				else if UberCont.unlocked_more_crowns
				{
					selectedIndex -= 12;
				}
			}
			else if UberCont.unlocked_more_crowns
			{
				selectedIndex += 12;
			}
			if !switchingMenu
			{
				with CrownIcon
				{
					if rowPosition == other.selectedIndex
					{
						selected = true;
					}
					else
						selected = false;
				}
				controllingSecondaryMenu = false;
				previouslySelectedIndex = selectedIndex;
			}
		}
	}
}
else if KeyCont.key_nort[0] == 1
{
	event_user(0);
	if thereIsAlt
	{
		debug(frac(selectedIndex));
		var prevSelectedIndex = selectedIndex;
		if frac(selectedIndex) > 0
		{
			selectedIndex -= 0.5;	
		}
		else
		{
			selectedIndex += 0.5;
		}
		with UltraIcon
		{
			if skillIndex == other.selectedIndex
			{
				selected = true;
				hasSelectedSkill = true;
			}
			else
				selected = false;
		}
		if !hasSelectedSkill
		{
			selectedIndex = prevSelectedIndex;
		}
	}
	else if instance_exists(CrownIcon)
	{
		snd_play_2d(sndHover);
		if controllingSecondaryMenu && instance_exists(MultiCrownMenu)
		{
			if selectedIndex < 0
			{
				if MultiCrownMenu.lastCrown >= 0
					selectedIndex = MultiCrownMenu.lastCrown;
				else
				{
					switchingMenu = true;
					controllingSecondaryMenu = false;
					selectedIndex = previouslySelectedIndex;
				}
			}
			else if MultiCrownMenu.lastCrown >= 0
			{
				if selectedIndex - MultiCrownMenu.maxWidthCrowns < 0
				{
					switchingMenu = true;
					controllingSecondaryMenu = false;
					selectedIndex = previouslySelectedIndex;
				}
				else
				{
					selectedIndex -= MultiCrownMenu.maxWidthCrowns;
				}
			} 
		}
		else
		{
			if !UberCont.unlocked_more_crowns || selectedIndex - 12 < 0
			{
				if instance_exists(MultiCrownMenu)
				{
					switchingMenu = true;
					controllingSecondaryMenu = true;
					selectedIndex = -2;
				}
				else if UberCont.unlocked_more_crowns
				{
					selectedIndex += 12;
				}
			}
			else if UberCont.unlocked_more_crowns
			{
				selectedIndex -= 12;
			}
			if !switchingMenu
			{
				with CrownIcon
				{
					if rowPosition == other.selectedIndex
					{
						selected = true;
					}
					else
						selected = false;
				}
				controllingSecondaryMenu = false;
				previouslySelectedIndex = selectedIndex;
			}
		}
	}
}
if switchingMenu
{
	snd_play_2d(sndClickBack);
	if !controllingSecondaryMenu {
		with CrownIcon
		{
			if rowPosition == other.selectedIndex
			{
				selected = true;
			}
			else
				selected = false;
		}
	}
	else
	{
		with CrownIcon
		{
			selected = false;	
		}
	}
}