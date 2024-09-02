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
	if(audio_group_get_gain(audiogroup_default)>0.3){
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
		if(x<1280||y<416){
		sprite_index = spr_girl_walkright;
		y_spd = 4;
		if(!place_meeting(x+8,y,WALL)){
			x_spd = 4;
		}
		else{
			x_spd = 0;
			sprite_index = spr_girl_walkdown;
		}
		if(x>546&&x<832&&y<=544){
			sprite_index = spr_girl_walkleft;
			x_spd = -4;
			y_spd = 0;
		}
		if(x>=542&&x<=546&&y<=544){
			sprite_index = spr_girl_walkdown;
			x = 544;
			y_spd = 4;
			x_spd = 0;
		}
	}
	}
	else if(x<1312){
		sprite_index = spr_girl_walkright;
		if(x<1280||y<416){
		y = 800;
		}
		y_spd = 0;
	}
	else if(x>=1310&&x<=1314&&y>=798&&y<=802){
		x = 1312;
		image_speed = 0;
		image_index = 1.8;
		x_spd = 0;
		donewalking = 990;
		timer = -15;
	}
	if(x>1312||!(x<1280||y<416))&&donewalking<0{
	if(y>802){
		y_spd = -4;
		x_spd = 0;
		sprite_index = spr_girl_walkup;
	}
	else if(y<798){
		if(x<1760){
			y_spd = 0;
			x_spd = 4;
		sprite_index = spr_girl_walkright;
		}
		else if(x>1760){
			x = 1760;
		}
		else{
			x_spd = 0;
			y_spd = 4;
		sprite_index = spr_girl_walkdown;
		}
	}
	else if(x>1312){
		x_spd = -4;
		y_spd = 0;
		sprite_index = spr_girl_walkleft;
	}
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

if(donewalking==-15&&(x!=1312||y!=800))||donewalking>=0{
x+=x_spd;
y+=y_spd;
}