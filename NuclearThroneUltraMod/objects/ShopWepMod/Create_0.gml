image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y


cost=0.8;
cost*=ShopWheel.discount;
txt = "WEAPON MOD#RADS: "+string(round(cost*100))+"%";