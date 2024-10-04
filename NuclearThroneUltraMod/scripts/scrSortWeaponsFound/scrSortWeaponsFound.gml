///scrSortWeaponsFound();
// /@description
///@param
function scrSortWeaponsFound(){
	with UberCont
	{
		debug("THESE WEAPONS: ", droppedWeapons);
		finalizedWeapons = [];
		var rows = 2;
		if opt_sideart == sprite_get_number(sprSideArt) + 1
			rows += 1;
			
		droppedWeapons = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,18,29,20,21,22];
		var al = array_length(droppedWeapons);
		var weaponTracking = 0;
		longestWeaponRow = 0;
		var currentRow = 0;
		if al > 0
		{
			var part = al/rows;
			for (var i = 0; i < al; i++)
			{
				var newWep = droppedWeapons[i]
				finalizedWeapons[currentRow][weaponTracking] =  {
					index: newWep,
					found: array_contains(foundWeapons,newWep),
					used: array_contains(usedWeapons,newWep),
					isNew: array_contains(newWeapons,newWep),
					
				}
				weaponTracking += 1;
				if weaponTracking > part
				{
					if weaponTracking > longestWeaponRow
						longestWeaponRow = weaponTracking;
					weaponTracking = 0;
					currentRow += 1;
				}
			}
			debug("FINALIZED WEAPONS:");
			debug(finalizedWeapons);
		}
	}
}