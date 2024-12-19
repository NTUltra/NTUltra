/// @description EKESPLOOOSION
var inArray = array_contains(hitEntities,other.id)
if other.team != team && (!inArray || other.sprite_index != other.spr_hurt)
{
	if !inArray
		hitEntities[array_length(hitEntities)] = other.id;
	alarm[1] = hitDelay;
	var me = id;
	with other
	{
		DealDamage(other.dmg);
		snd_play(snd_hurt, hurt_pitch_variation)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
		
		BackCont.shake += 5
			with instance_create(x,y,Explosion) {
				scrCopyWeaponMod(me);
			}
			var ang = random(360);
			var angstep = 360/3;
			repeat(3)
			{
				with instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),SmallExplosion) {
					scrCopyWeaponMod(me);
				}
				ang += angstep;
			}
	}
}
