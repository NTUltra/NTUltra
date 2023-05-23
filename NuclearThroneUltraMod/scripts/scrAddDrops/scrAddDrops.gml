///scrAddDrops();
// /@description
///@param
function scrAddDrops(amountOfDrops){
	repeat(amountOfDrops)
	{
		itemDropChanceIndex++;
		itemDropChance[itemDropChanceIndex] = random(100);
	}
	
	repeat(amountOfDrops)
	{
		weaponDropChanceIndex++;
		weaponDropChance[weaponDropChanceIndex] = random(100);
	}
	
	repeat(amountOfDrops * 2)
	{
		confDropChanceIndex++;
		confDropChance[confDropChanceIndex] = random(120);
	}
}