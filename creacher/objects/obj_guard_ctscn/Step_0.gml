if(obj_girl_ctscn2.donewalking>0){
	obj_girl_ctscn2.donewalking--;
}

if(obj_girl_ctscn2.donewalking>0){
dw = obj_girl_ctscn2.donewalking;
}


if(dw>900&&dw<938){
	view_visible[0] = false;
	view_visible[1] = true;
	camera_set_view_pos(view_camera[1],camera_get_view_x(view_camera[1]),camera_get_view_y(view_camera[1])+(576/37));
	camera_set_view_size(view_camera[1],camera_get_view_width(view_camera[1])-1024/37,camera_get_view_height(view_camera[1])-576/37);
}
if(dw==900){
	view_visible[1] = false;
	view_visible[2] = true;
}










if(dw>938&&dw<960){
	if(image_alpha<1){
		image_alpha+=0.05;
	}
}

if(dw==880){
	sprite_index = spr_guard_walkright;
}

if(dw==860){
	image_speed = 1;
	x_spd = 6;
	obj_girl_ctscn2.sprite_index = spr_girl_walkleft;
}

if(dw>760&&x>=544){
	x = 544;
	obj_girl_ctscn2.donewalking = 760;
	x_spd = 0;
	image_speed = 0;
	image_index = 1.8;
	obj_light.visible = true;
	obj_light.image_alpha = 0;
	if(obj_creacher.image_index==1){
			temp_img_ind = 2.93;
		}
		else{
			temp_img_ind = 0.93;
		}
		obj_creacher.sprite_index = spr_creacher_1;
		obj_creacher.image_alpha = 0.5;
		obj_creacher.image_index = temp_img_ind;
}

if(dw<755&&dw>740){
	obj_light.image_alpha+=0.1;
	obj_creacher.image_alpha+=0.05;
}

if(dw==745){
	sprite_index = spr_guard_attack;
	image_speed = 1;
}

if(dw==725){
	image_speed = 0;
	image_index = 2;
}

if(dw==720){
	obj_girl_ctscn2.sprite_index = spr_girl_attack;
	obj_girl_ctscn2.image_speed = 1;
	obj_girl_ctscn2.image_index = 0;
	obj_girl_ctscn2.depth = -999;
}

if(obj_girl_ctscn2.sprite_index==spr_girl_attack&&obj_girl_ctscn2.image_index==7){
	obj_girl_ctscn2.sprite_index = spr_girl_attacklong;
	obj_girl_ctscn2.image_index = 2;
	audio_group_set_gain(audiogroup_default, 0, 1000);
	obj_light.visible = false;
	obj_creacher.visible = false;
	obj_creacher_ctscn2.x = obj_creacher.x;
	obj_creacher_ctscn2.y = obj_creacher.y;
	obj_creacher_ctscn2.visible = true;
	sprite_index = spr_guard_attack_stone;
}

if(obj_girl_ctscn2.sprite_index==spr_girl_attacklong&&dw==600){
	obj_girl_ctscn2.sprite_index = spr_girl_attack;
	obj_girl_ctscn2.image_index = 7;
	obj_girl_ctscn2.image_speed = -1;
}


if(obj_girl_ctscn2.sprite_index = spr_girl_attack&&obj_girl_ctscn2.image_index = 0&&obj_girl_ctscn2.image_speed = -1){
	obj_girl_ctscn2.sprite_index = spr_girl_downleft;
	obj_girl_ctscn2.image_index = 1.8;
	obj_girl_ctscn2.image_speed = 0;
	obj_girl_ctscn2.donewalking = 550;
}

if(dw==490){
	obj_girl_ctscn2.sprite_index = spr_girl_walk_downleft;
	obj_girl_ctscn2.image_index = 1.8;
	obj_girl_ctscn2.image_speed = 1;
	obj_girl_ctscn2.x_spd = -6;
	obj_girl_ctscn2.y_spd = 3;
}

if(dw<488&&dw>370&&obj_girl_ctscn2.x>obj_creacher_ctscn2.x-4&&obj_girl_ctscn2.x<obj_creacher_ctscn2.x+4){
	obj_girl_ctscn2.sprite_index = spr_girl_walkdown;
	obj_girl_ctscn2.x_spd = 0;
	obj_girl_ctscn2.donewalking = 485;
	obj_girl_ctscn2.x = obj_creacher_ctscn2.x;
	obj_girl_ctscn2.depth = obj_creacher_ctscn2.depth + 1;
	if(obj_girl_ctscn2.y<obj_creacher_ctscn2.y-67){
		obj_girl_ctscn2.y_spd = 3;
	}
	else{
		obj_girl_ctscn2.donewalking = 370;
		obj_girl_ctscn2.y_spd = 0;
		obj_girl_ctscn2.y = obj_creacher_ctscn2.y-64;
		obj_girl_ctscn2.image_speed = 0;
		obj_girl_ctscn2.image_index = 1.8;
	}
}

if(dw<=330&&dw>300){
	obj_girl_ctscn2.y_spd = 0;
	obj_girl_ctscn2.y = obj_creacher_ctscn2.y-64;
	obj_girl_ctscn2.sprite_index = spr_girl_hug;
	obj_girl_ctscn2.image_speed = 1;
	obj_creacher_ctscn2.visible = false;
	obj_girl_ctscn2.donewalking = 320;
}

if(dw>=270&&dw<=280){
	obj_girl_ctscn2.sprite_index = spr_girl_walkdown;
	obj_girl_ctscn2.image_index = 1.2;
	obj_girl_ctscn2.image_speed = -3;
	obj_girl_ctscn2.y_spd = -6;
}

if(dw==210){
	obj_girl_ctscn2.sprite_index = spr_girl_walkdown;
	obj_girl_ctscn2.image_index = 1.8;
	obj_girl_ctscn2.image_speed = 0;
	obj_girl_ctscn2.y_spd = 0;
	obj_creacher_ctscn2.x_spd = -8;
}

if(dw==190){
	obj_creacher_ctscn2.x_spd = -0;
	obj_creacher_ctscn2.y_spd = -8;
}

if(dw<190&&obj_girl_ctscn2.y>obj_creacher_ctscn2.y-6){
	obj_creacher_ctscn2.y_spd = 0;
	obj_girl_ctscn2.y = obj_creacher_ctscn2.y;
	obj_creacher_ctscn2.x_spd = 8;
	obj_girl_ctscn2.sprite_index = spr_girl_walkright;
	obj_girl_ctscn2.image_speed = 3;
	obj_girl_ctscn2.x_spd = 8;
}

if(dw==0){
	obj_shift.target = rm_end;
	obj_shift.shift = true;
}
	








x+=x_spd;
y+=y_spd;