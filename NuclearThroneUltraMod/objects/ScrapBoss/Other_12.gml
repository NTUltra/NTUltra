/// @description Reached half health
actTime = max(1,floor(actTime * 0.5));
projectileSpeed += 1;
fireRate = max(1,fireRate - 2);