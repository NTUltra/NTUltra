/// @description Bouncer balls
with instance_create(xprevious,yprevious,BouncerPlasmaBall)
{
	motion_add(other.direction+180+30,4)
	image_angle = direction;
	team = other.team
}
with instance_create(xprevious,yprevious,BouncerPlasmaBall)
{
	motion_add(other.direction+180-30,4)
	image_angle = direction;
	team = other.team
}