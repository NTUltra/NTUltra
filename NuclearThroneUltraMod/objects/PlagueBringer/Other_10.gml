/// @description LOSE MUTATION LOGIC
with Player
{
	BackCont.shake += 10;
	var currentLevel = level;
	var currentTotalSkills = totalSkills;
	var currentSkillsChosen = skillsChosen;
	var gottenSkills = [];
	var si = 0;
	repeat(maxskill + 1)
	{
		if skill_got[si]
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
	repeat(6)
	{
		with instance_create(x,y,AcidStreak)
		{
			motion_add(random(360),6)
			image_angle = direction
		}
	}
	refundPoints += 1;
}
