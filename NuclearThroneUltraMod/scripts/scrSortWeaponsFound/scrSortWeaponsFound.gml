///scrSortWeaponsFound();
// /@description
///@param
function scrSortWeaponsFound(){
	with UberCont
	{
		finalizedWeapons = [];
		var rows = 2;
		if opt_sideart == sprite_get_number(sprSideArt) + 1
			rows += 2;
			
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
		}
	}
}