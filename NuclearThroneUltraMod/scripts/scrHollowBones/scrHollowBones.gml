///scrHollowBones();
// /@description
///@param
function scrHollowBones(){
	//Player.ultra_got[57] 
	if (instance_exists(Player) && (Player.skill_got[47])) {
		if instance_exists(WantHollowImplosion)
		{
			BackCont.shake += 7;
			with instance_create_depth(x,y,depth - 1,HollowBones)
			{
				direction = other.direction;
				image_angle = random(360);
				speed = 0.1;
			}
			snd_play(sndVoidConsumptionS,0.1);
			with instance_nearest(x,y,WantHollowImplosion)
				instance_destroy();
		}
		
	}
}