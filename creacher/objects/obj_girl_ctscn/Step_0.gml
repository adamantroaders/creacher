if(!obj_lightswitch.playtime){
	//x=obj_girl.x;
	//y=obj_girl.y;
}
if(obj_lightswitch.playtime){
	visible = true;
	if(x<obj_lightswitch.x-1){
		sprite_index = spr_girl_walkright;
		if(first){
			image_index = 1.8;
			first = false;
		}
		x+=2;
		if(x>=obj_lightswitch.x-1){
			first = true;
		}
	}
	else if(x>obj_lightswitch.x+1){
		sprite_index = spr_girl_walkleft;
		if(first){
			image_index = 1.8;
			first = false;
		}
		x-=2;
		if(x<=obj_lightswitch.x+1){
			first = true;
		}
	}
	else{
		sprite_index = spr_girl_walkup;
		if(first){
			image_index = 1.8;
			first = false;
		}
		if(y>obj_lightswitch.y+20){
			y-=2;
		}
		else{
			image_speed = 0;
			image_index = 1;
			timer = 105;
			obj_lightswitch.playtime = false;
		}
	}
}
if(timer==90){
	obj_lightswitch.image_speed = 1;
	if(room==Room18){
		room = rm_end;
	}
}
if(timer>0){
	timer--;
}
if(timer==0){
	timer = -15;
	godown = 45;
}
if(godown==0){
	godown = -15;
	image_speed = 0;
	image_index = 1;
}
if(godown>0){
	image_speed = 3;
	sprite_index = spr_girl_walkdown;
	y+=2;
	godown--;
	first = true;
}
if(obj_creacher_ctscn.hole==0){
	holetimer = 15;
	obj_creacher_ctscn.hole = -10;
	if(room==Room6||room==Room12){
		audio_group_set_gain(audiogroup_default,0,3500);
	}
}
if(holetimer>0){
	holetimer--;
}
if(holetimer==0){
	image_speed = 3;
	if(x<obj_hole.x-1){
		sprite_index = spr_girl_walkright;
		if(first){
			image_index = 1.8;
			first = false;
		}
		x+=2;
		if(x>=obj_hole.x-1){
			first = true;
		}
	}
	else if(x>obj_hole.x+1){
		sprite_index = spr_girl_walkleft;
		if(first){
			image_index = 1.8;
			first = false;
		}
		x-=2;
		if(x<=obj_hole.x+1){
			first = true;
		}
	}
	else if(vis_timer>0){
		vis_timer--;
		sprite_index = spr_girl_walkup;
		if(first){
			image_index = 1.8;
			first = false;
		}
		if(y>obj_hole.y-300){
			y-=2;
		}
	}
}
if(vis_timer==0){
	image_speed = 0;
	image_index = 1.8;
	if(image_alpha>0){
		image_alpha-=0.1;
	}
}
if(image_alpha<=0){
	y-=8;
}
if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}
if(instance_exists(obj_hole)){
	depth = obj_hole.depth-1;
}