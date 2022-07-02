///scrSheepHit();
// /@description
///@param
function scrSheepHit(){
	with Player {
		if justAsheep && ultra_got[50]==0{//Sheep passive
			justAsheep = false;
			instance_create(other.x-5,other.y-16,Notice);
			instance_create(other.x+5,other.y-16,Notice);
			//NOW IF INSOMNIA GIVE ALL THE BADBOYS SOME TIME AGAIN put em too sleep
			if skill_got[29]//Insomnia
			{
				with enemy
				{
					if alarm[1]>0
					{
						alarm[1]+=200;
						with instance_create(x,y,Snooze)
						{
							owner = other.id;
							yoffset = other.sprite_height*0.5 - 4;
						}
					}
				}
			}
		}
	}
}