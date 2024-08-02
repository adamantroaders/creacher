if(obj_buttonred.pressed&&first){
	obj_shift.finalshift = true;
	first = false;
}

if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}

if(timer==0){
	if(audio_group_get_gain(audiogroup_default)>0.1){
		audio_group_set_gain(audiogroup_default, audio_group_get_gain(audiogroup_default)-0.005,0);
	}
	
	if(y>801&&x<1312){
		sprite_index = spr_girl_walkright;
		y_spd = -4;
		if(!place_meeting(x+8,y,WALL)){
			x_spd = 4;
		}
		else{
			x_spd = 0;
			sprite_index = spr_girl_walkup;
		}
	}
	else if(y<799&&x<1312){
		sprite_index = spr_girl_walkright;
		y_spd = 4;
		if(!place_meeting(x+8,y,WALL)){
			x_spd = 4;
		}
		else{
			x_spd = 0;
			sprite_index = spr_girl_walkdown;
		}
	}
	else if(x<1312){
		sprite_index = spr_girl_walkright;
		y = 800;
		y_spd = 0;
	}
	else{
		image_speed = 0;
		image_index = 1.8;
		x_spd = 0;
		donewalking = 990;
		timer = -15;
	}
		
}

if(timer>0){
	timer--;
}

if(obj_shift.ending&&obj_shift.image_speed = -1){
	x = obj_girl.x;
	y = obj_girl.y;
	visible = true;
	obj_girl.visible = false;
	obj_girl.canmove = false;
	timer = 15;
}

x+=x_spd;
y+=y_spd;