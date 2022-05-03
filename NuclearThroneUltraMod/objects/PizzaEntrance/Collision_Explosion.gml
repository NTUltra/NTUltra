if image_index = 0 && alarm[0]<1 && !instance_exists(BallMom) && other.object_index != PopoExplosion
{
image_index = 1
with Player
{
area = 102
subarea = 0
}
//with enemy
//my_health = 0
with instance_create(x+16,y+16,Portal) type = 1
}

