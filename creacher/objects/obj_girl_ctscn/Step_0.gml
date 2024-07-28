if(!obj_lightswitch.playtime){
	//x=obj_girl.x;
	//y=obj_girl.y;
}
if(obj_lightswitch.playtime){
	visible = true;
	if(x<obj_lightswitch.x-1){
		sprite_index = spr_girl_walkright;
		x+=2;
	}
	else if(x>obj_lightswitch.x+1){
		sprite_index = spr_girl_walkleft;
		x-=2;
	}
	else{
		sprite_index = spr_girl_walkup;
		if(y>obj_lightswitch.y+20){
			y-=2;
		}
		else{
			image_speed = 0;
			image_index = 1;
			timer = 90;
			obj_lightswitch.playtime = false;
		}
	}
}
if(timer==75){
	obj_lightswitch.image_speed = 1;
}
if(timer>0){
	timer--;
}
if(timer==0){
	timer = -15;
}