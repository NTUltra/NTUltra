function scrWeaponHold() {
	if wep_type[wep] != 0 and wep != 24 and wep != 36 and wep != 396 and wep != 433
	and wep != 377 and wep != 53 && wep!=198 && wep!=222 && wep!=223 and wep != 332//some melee exceptions
	and wep != 458 and wep != 495 and wep != 553 and wep != 577 and wep != 588 and wep != 591
	and wep != 592 and wep != 593 and wep != 596 and wep != 625 and wep != 481 and wep != 669
	and wep != 492 and wep != 603 and wep != 604 and wep != 700 and wep != 177 and wep != 192
		wepangle = 0
	else if wepangle = 0
		wepangle = choose(120,-120)
}
