///scrAddDrops();
// /@description
///@param
function scrAddDrops(amountOfDrops){
	itemDropChanceIndex = min(array_length(itemDropChance)-1,itemDropChanceIndex);
	repeat(amountOfDrops)
	{
		itemDropChanceIndex++;
		itemDropChance[itemDropChanceIndex] = random(100);
	}
	weaponDropChanceIndex = min(array_length(weaponDropChance)-1,weaponDropChanceIndex);
	repeat(amountOfDrops)
	{
		weaponDropChanceIndex++;
		weaponDropChance[weaponDropChanceIndex] = random(100);
	}
	confDropChanceIndex = min(array_length(confDropChance)-1,confDropChanceIndex);
	repeat(amountOfDrops * 2)
	{
		confDropChanceIndex++;
		confDropChance[confDropChanceIndex] = random(120);
	}
}