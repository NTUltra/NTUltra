///scrFreezeTarget();
// /@description
///@param
function scrFreezeTarget(stunTime){
	if my_health > 0{
		if frozen == noone
		{
			frozen = instance_create(x,y,FrozenEnemy);
			with frozen
			{
				spriteSize = max(other.sprite_width,other.sprite_height);
				var s = min(2,other.mySize);
				image_xscale=s*choose(1,-1);
				image_yscale=s;
				xx=other.x
				yy=other.y
				owner=other.id;
			}
		}
		else
		{
			with frozen {
				debrisAmount += 1;
			}
		}
		if alarm[1] > stunTime
			stunTime *= 0.5;
		alarm[11]+=stunTime + 5;
		if alarm[1] > 0
			alarm[1] += stunTime;
	}
}