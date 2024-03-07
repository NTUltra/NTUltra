///scrDoctorThroneButt();
// /@description
///@param
function scrDoctorThroneButt(){
	if skill_got[5] {
		snd_play_2d(sndSharpTeeth);
		snd_play(sndUltraGrenadeSuck);
		repeat(2)
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
			if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
			{
				snd_play(snd_hurt, hurt_pitch_variation,true)
				Sleep(5)
				DealDamage(4);
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