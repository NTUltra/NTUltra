/// @description Init
depth = 6;
image_speed = 0.4;
scrSkills();
name = "";
skillIndex = irandom(maxskill);
active = false;
used = false;
alarm[0] = 5;
alarm[6] = 5;
var i = skillIndex + 1;
if i > maxskill
	i = 0;
with Player {
	while (skill_got[i] != 1 || i == 27 //Ignore patience
	|| (i == 18 && skeletonlives < 1))//Ignore last wish if you lost your lives
	{
		i++;
		if i > maxskill
			i = 0;
	}
}
skillIndex = i;
name = "REROLL#"+skill_name[i];