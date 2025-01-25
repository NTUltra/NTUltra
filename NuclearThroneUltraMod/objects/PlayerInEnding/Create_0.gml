/// @description Get player's shit
with instance_create(x,y,PauseTimer) {
	persistent = true;	
}
alarm[2] = 300;
race = 0;
acceleration = max(0.8,Player.acceleration);
maxSpeed = clamp(Player.maxSpeed - 1,1,5);
reachedIt = false;
direction = Player.direction;
speed = Player.speed;
spr_walk = Player.spr_walk;
spr_idle = Player.spr_idle;
spr_sit = Player.spr_sit;
spr_go_sit = Player.spr_go_sit;
snd_thrn = Player.snd_thrn;
image_speed = 0.4;
right = Player.right;
sprite_index = Player.sprite_index;
image_index = Player.image_index;
awep = 0;
if Player.wep != 0
	awep = Player.wep_sprt[Player.wep];
bwep = 0;
if Player.bwep != 0
	bwep = Player.wep_sprt[Player.bwep];
cwep = 0;
if Player.cwep != 0
	cwep = Player.wep_sprt[Player.cwep];
Player.lockout = true;
isFading = false;
endingType = 0;
depth = -4;
with enemy
{
	my_health = 0;
	prevhealth = 0;
}