///scrBoostProjectileSpeed();
// /@description
///@param
function scrBoostProjectileSpeed(){
	if instance_exists(Player)
	{
		if team=2
			speed*=Player.pSpeedBoost
	}
}