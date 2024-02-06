///scrSheepHit();
// /@description
///@param
function scrSheepHit(){
	with Player {
		if justAsheep && other.team != 0 && other.team != team//|| scrCheckForAllParents(other.id, enemy))
		{
			if (((!ultra_got[50] || altUltra) || instance_number(enemy) == 1 || instance_exists(NuclearThrone1)) && instance_exists(PlayerAlarms2) && PlayerAlarms2.alarm[0] < 1) {
				with other
				{
					if !(scrWasSpottedDoingCrime())
						exit;
					else
					{
						instance_create(x-5,y-16,Notice);
						instance_create(x+5,y-16,Notice);	
					}
				}
				//Sheep passive
				justAsheep = false;
				//NOW IF INSOMNIA GIVE ALL THE BADBOYS SOME TIME AGAIN put em too sleep
				if skill_got[29]//Insomnia
				{
					if !(ultra_got[51] && altUltra) || sheepFakeouts == 3 + (skill_got[5] * 2)
					{
						with enemy
						{
							if alarm[1]>0
							{
								alarm[1]+=200;
								scrGiveSnooze();
							}
						}
						with PlayerAlarms2
						{
							alarm[0] = 200;
						}
					}
				}
			}
			if ultra_got[50] && altUltra
			{
				with other
				{
					instance_create(x,y,ImpactFX);
					snd_play(sndImpWristHit,0,true);
					var dmgTaken = prevhealth - my_health;//Damage increase
					BackCont.shake += dmgTaken*2;
					Sleep(dmgTaken);
					DealDamage(dmgTaken * 9);// Not entirely sure about this one
				}
			}
		}
	}
}