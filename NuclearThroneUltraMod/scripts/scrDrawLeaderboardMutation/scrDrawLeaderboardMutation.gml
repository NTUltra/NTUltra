///scrDrawLeaderboardMutation();
// /@description
///@param
function scrDrawLeaderboardMutation(xx, yy, entry, startIndex) {
	var muts = entry[startIndex];
	draw_sprite(sprSkillIconHUD,
			muts[max(0,
					floor(
						lerp(0, array_length(muts)-1, killScroll)
					)
				)
			]
		,
		xx,
		yy
	);
	var w = 30*0.5;
	var h = 22*0.5;
	if (mouse_x > xx - w*0.5 && mouse_x < xx + w*1.5 && mouse_y > yy - h && mouse_y < yy + h)
	{
		enablePopUp = 4;
		popupEntry = entry;
		popUpX = xx;
		popUpY = yy;
		popUpIndex = startIndex;
	}
}