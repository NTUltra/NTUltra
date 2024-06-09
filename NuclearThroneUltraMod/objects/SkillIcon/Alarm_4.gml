/// @description Based on skillIndex
if instance_number(SkillIcon) > 10//ALL MUTATION CHOICES
	alarm[3] = max(1,skillIndex);
else
	alarm[3] = max(1,skillIndex) * 2;
