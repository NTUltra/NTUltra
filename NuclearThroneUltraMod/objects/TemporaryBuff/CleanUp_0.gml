/// @description reset the maxhp and speed back to normal
if instance_exists(Player)
{
Player.maxhealth=maxhp;
Player.maxSpeed=maxSpeed;
if Player.my_health>Player.maxhealth
Player.my_health=Player.maxhealth;
}

