///scrSecondaryPowers();
// /@description
///@param
function scrSecondaryPowers() {
	if (skill_got[maxskill + 1])
	{
		switch (race)
		{
			case 2:
				if targetPickup == noone && instance_exists(CrystalShield) && !instance_exists(CrystalTorpedo) && (KeyCont.key_pick[p] == 1 || KeyCont.key_pick[p] == 2)
				{
					if my_health > 1
					{
						if armour > 0
							armour -= 1;
						else
							DealDamage(1,false,false,false);
					
						hitBy = sprite_index;
						exception=true;
						sprite_index = spr_hurt
						image_index = 0
						//snd_play_2d(snd_hurt, hurt_pitch_variation)
						with CrystalShield
						{
							instance_destroy();
							with instance_create(x,y,AnimDestroy)
							{
								sprite_index = other.spr_disappear;
								image_index = 3;
							}
						}
						var a = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
						BackCont.shake += 10;
						BackCont.viewx2 += lengthdir_x(15,a)*UberCont.opt_shake
						BackCont.viewy2 += lengthdir_y(15,a)*UberCont.opt_shake
						instance_create(x,y,CrystalTorpedo);
						snd_play(sndCrystalTorpedo);
					}
					else if KeyCont.key_pick[p] == 1
					{
						snd_play_2d(sndCantTorpedo,0.1);
						BackCont.shake += 10;
					}
				}
			break;
			case 3:
				if targetPickup == noone && KeyCont.key_pick[p] == 1
				{
					var a;
					if !instance_exists(MindField)
					{
						a = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
						with instance_create(x,y,EyesMindFieldTransition)
						{
							targetX = UberCont.mouse__x;
							targetY = UberCont.mouse__y;
							distance = point_distance(x,y,targetX,targetY);
							dir = point_direction(x,y,targetX,targetY);
						}
						if !instance_exists(MindFieldSound)
						{
							with instance_create(x,y,MindFieldSound)
							{
								tx = UberCont.mouse__x;
								ty = UberCont.mouse__y;
							}
						}
					}
					else
					{
						a = point_direction(MindField.x,MindField.y,UberCont.mouse__x,UberCont.mouse__y);
					}
					BackCont.viewx2 += lengthdir_x(10,a)*UberCont.opt_shake
					BackCont.viewy2 += lengthdir_y(10,a)*UberCont.opt_shake
					BackCont.shake += 5
					instance_create(UberCont.mouse__x,UberCont.mouse__y,MindField);
				}
			break;
			case 27:
				if !instance_exists(HandBlock) && KeyCont.key_pick[p] == 1 or KeyCont.ke4y_pick[p] == 2
				{
					with Hand
					{
						BackCont.shake += 10;
						snd_play(sndHumphryHalt);
						if alarm[1] > 0
							alarm[1] += 5;
						else if alarm[2] > 0
							alarm[2] += 5;
						previousSprite = sprite_index;
						sprite_index = spr_block;
						with instance_create(x,y,HandBlock) {
							team = other.team;	
						}
					}
				}
			break;
		}
	}
}