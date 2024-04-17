///scrAlienIntestines();
// /@description
///@param
function scrAlienIntestines(){
	if alienIntestines > 2
	{
		scrAlienIntestinesAttack();
		with instance_create(x,y,DelayedIntestines) {
			alienIntestines = other.alienIntestines;
			team = other.team;
			creator = other.id;
		}
	}
}