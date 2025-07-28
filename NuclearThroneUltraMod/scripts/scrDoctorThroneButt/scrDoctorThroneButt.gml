///scrDoctorThroneButt();
// /@description
///@param
function scrDoctorThroneButt(theDamage = max(2,level) + loops, theRad = 3){
	if skill_got[5] {
		snd_play_2d(sndSharpTeeth);
		snd_play(sndUltraGrenadeSuck);
		repeat(theRad)
		{
			with instance_create(x,y,Rad)
			{
				motion_add(other.direction,other.speed)
				motion_add(random(360),random(5)+3)
				repeat(speed)
				speed *= 0.9
			}
		}
		with enemy {
			if point_distance(x,y,other.x,other.y) < 250
			{
				snd_play(snd_hurt, hurt_pitch_variation,true)
				Sleep(5)
				DealDamage(theDamage);
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,6)
				if raddrop > 1
				{
					raddrop -= 2;
					instance_create(x,y,SuckRad);
					with instance_create(x,y,PlutoFX)
					{
						motion_add(point_direction(x,y,Player.x,Player.y),1+random(2));
					}
				}
				else if raddrop > 0
				{
					raddrop -= 1;
					instance_create(x,y,SuckRad);
					with instance_create(x,y,PlutoFX)
					{
						motion_add(point_direction(x,y,Player.x,Player.y),1+random(2));
					}
				}
			}
		}
	}
}