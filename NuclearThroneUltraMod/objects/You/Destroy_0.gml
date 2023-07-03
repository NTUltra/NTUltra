with instance_create(x,y,MovingCorpse)
{
mySize = 1
mask_index = other.mask_index
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
sprite_index = other.spr_dead
image_xscale = other.right
if speed > 16
speed = 16
if other.race = 4 && instance_exists(Player)
{
p = Player.p
with instance_create(x,y,MeltDead)
{
p= Player.p
creator = other.id
}
}
}

with UberCont
{//Unlock potato cannon for one wep only
oneweponly311=1;
scrSave();
}

