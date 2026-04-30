/// @description Big balls
bigballs = true;
with NuclearThrone1Side
{
	if alarm[2] < 1
	{
		if isLeft
			alarm[2] = max(1,firerate * 9 * badboyBuff);
		else
			alarm[2] = max(1,firerate * 5 * badboyBuff);
	}
}
if badboyBuff == 1
	alarm[1] += 20;