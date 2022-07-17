if other.team != team and other.my_health > 0
{
if other.sprite_index != other.spr_hurt
{
snd_play(sndBurn)
with other
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 1;
motion_add(other.direction,0.5)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
}
else
{
	scrIframeSkipper(0.075);
}
x = (x+other.x)/2+random(6)-3
y = (y+other.y)/2+random(6)-3
speed *= 0.8
}

