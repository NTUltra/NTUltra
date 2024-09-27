/// @description LOSE A SKILL
if !instance_exists(Player)
{
	//YOU DIED CLOSE
	with EnteringClouds {
		instance_destroy();
	}
	alarm[7] = 0;
	alarm[1] = 0;
	alarm[2] = 0;
	exit;
}
var s = loseSkills;
shake = 3 - s;
with Player
{
	var currentLevel = level;
	var currentTotalSkills = totalSkills;
	var currentSkillsChosen = skillsChosen;
	var gottenSkills = [];
	var si = 0;
	repeat(maxskill)
	{
		if skill_got[si] && si != 27//NOT PATIENCE
		{
			array_push(gottenSkills,si);
		}
		si++;
	}
	var chosenSkillToLose = gottenSkills[irandom(array_length(gottenSkills)-1)];
	array_push(UberCont.skillDeposit,chosenSkillToLose);
	scrLoseSkill(chosenSkillToLose, true);
	with instance_create(x,y,PopupText)
	{
		mytext = "LOST "+other.skill_name[chosenSkillToLose];
		theColour=c_red;
		moveSpeed = 1;
		alarm[1] = 60;
	}
	level = currentLevel;
	totalSkills = currentTotalSkills;
	skillsChosen = currentSkillsChosen;
	repeat(12 - (s * 2))
	{
		with instance_create(x,y,AcidStreak)
		{
			motion_add(random(360),12 - (s))
			image_angle = direction
		}
	}
}
BackCont.shake += 10;
Sleep(100);
loseSkills -= 1;
if loseSkills < 1
{
	alarm[0] = 0;
	with Player
	{
		area = 138;
		subarea = 0;
		inverted = false;
	}
	with instance_create(x,y,Portal)
	{
		type = 1
		x = other.x;
		y = other.y;
	}
}
else
{
	alarm[0] = 5;
	alarm[3] = 60;
	snd_play(sndAboutToLoseSkill);
}
with GameRender
{
	mutationDynamicHud = dynamicHudResetTime;
}