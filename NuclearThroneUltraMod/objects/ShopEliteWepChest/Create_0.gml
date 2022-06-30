image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y


cost=0.45;
cost*=ShopWheel.discount;
txt = "ELITE WEAPON CHEST#RADS: "+string(round(cost*100))+"%";