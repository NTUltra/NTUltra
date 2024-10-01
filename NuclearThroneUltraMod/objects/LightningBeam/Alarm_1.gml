/// @description Damage
var hits = ds_list_create();
var al = collision_circle_list(x,y,radius + 6,hitme,false,false,hits,false);
for (var i = 0; i < al; i++)
{
	with hits[| i] {
		if team != other.team
		{
			DealDamage(other.dmg,false,true,false);
			instance_create(x+random_range(-4,4),y+random_range(-4,4),Smoke)
		}
	}
}
ds_list_destroy(hits);
if damageTicks > 0
{
	damageTicks -= 1;
	alarm[1] = 1;
}