if(timer>0/*&&x<769*/){
	timer--;
}

if(timer>18700){
	obj_guard_intro1.x_spd = 4;
	obj_guard_intro2.x_spd = 4;
	x_spd = 4;
	obj_guard_intro1.image_speed = 1;
	obj_guard_intro2.image_speed = 1;
	image_speed = 3;
}

if(timer>18700&&x>=obj_creacher_ctscn0.x){
	obj_guard_intro1.x_spd = 0;
	obj_guard_intro2.x_spd = 0;
	x_spd = 0;
	obj_guard_intro1.sprite_index = spr_guard;
	obj_guard_intro2.sprite_index = spr_guard;
	obj_guard_intro1.x-=16;
	obj_guard_intro2.x-=16;
	sprite_index = spr_girl;
	timer = 18700;
}

if(timer==18670){
	/*sprite_index = spr_girl_walkdown;
	image_index = 1.8;
	y_spd = 2;*/
	timer = 18550;
}

if(timer==18580){
	sprite_index = spr_girl;
	y_spd = 0;
}

if(timer==18550){
	obj_guard_intro1.sprite_index = spr_guard_walkup;
	obj_guard_intro1.image_index = 1.8;
	obj_guard_intro1.y_spd = -4;
	obj_guard_intro1.depth = -99;
}

if(timer>18400&&obj_guard_intro1.y<=128){
	timer = 18400;
	obj_guard_intro1.image_speed = 0;
	obj_guard_intro1.image_index = 1.8;
	obj_guard_intro1.y_spd = 0;
}

if(timer==18370){
	obj_switch1.image_speed = -1;
	guardx = obj_guard_intro1.x;
	timer = -15;
}

if(timer>18000&&timer<18362){
	if(obj_light.image_alpha<1){
		obj_light.image_alpha+=0.05;
	}
	else{
		timer = 18000;
	}
}

if(timer==18000){
	obj_creacher_ctscn0.image_speed = 2;
	obj_creacher_ctscn0.image_index = 1.8;
	obj_creacher_ctscn0.x+=4;
	y_spd = -4;
	sprite_index = spr_girl_walkdown;
	image_index = 1.8;
	image_speed = -1;
	obj_guard_intro1.sprite_index = spr_guard;
}

if(timer==17995){
	y_spd = 0;
	image_index = 1.8;
	image_speed = 0;
}

if(timer==17940){
	obj_creacher_ctscn0.image_speed = 1;
}

if(timer==17880){
	obj_creacher_ctscn0.image_speed = 0.5;
}
	

if(timer<18000&&timer>17820){
	if(timer%2==0){
		obj_creacher_ctscn0.x+=8;
	}
	else{
		obj_creacher_ctscn0.x-=8;
	}
}

if(timer==17820){
	obj_creacher_ctscn0.x = midx;
	obj_creacher_ctscn0.image_speed = 0;
	obj_creacher_ctscn0.image_index = 0.8;
}

if(timer==17750){
	obj_guard_intro1.sprite_index = spr_guard_walkleft;
	obj_guard_intro1.image_speed = 1;
	obj_guard_intro1.image_index = 1.8;
	obj_guard_intro1.x_spd = -4;
}

if(timer<17750&&obj_guard_intro1.x<=obj_girl_ctscn0.x&&obj_guard_intro1.sprite_index==spr_guard_walkleft){
	obj_guard_intro1.sprite_index = spr_guard_walkdown;
	obj_guard_intro1.image_speed = 1;
	obj_guard_intro1.image_index = 1.8;
	obj_guard_intro1.x_spd = 0;
	obj_guard_intro1.y_spd = 4;
	depth = -100;
}

if(timer==17700){
	obj_guard_intro1.image_speed = 0;
	obj_guard_intro1.image_index = 1.8;
	obj_guard_intro1.x_spd = 0;
	obj_guard_intro1.y_spd = 0;
	y_spd = 7;
	image_speed = 1;
	sprite_index = spr_girl_walkdown;
	image_index = 1.8;
	timer = 17680;
}

if(timer==17660){
	y_spd = 0;
	image_speed = 0;
	image_index = 1.8;
	obj_guard_intro1.sprite_index = spr_guard_walkright;
	obj_guard_intro1.image_speed = 1;
	obj_guard_intro1.image_index = 1.8;
	obj_guard_intro1.x_spd = 4;
	obj_guard_intro1.y_spd = 0;
}

if(timer<17660&&obj_guard_intro1.x>=guardx&&timer>17500){
	obj_guard_intro1.sprite_index = spr_guard_walkdown;
	obj_guard_intro1.image_speed = 1;
	obj_guard_intro1.image_index = 1.8;
	obj_guard_intro1.x_spd = 0;
	obj_guard_intro1.y_spd = 4;
	timer = 17500;
}

if(timer<17500&&timer>17400&&obj_guard_intro1.y>=obj_guard_intro2.y){
	timer = 17400;
	obj_guard_intro1.y = obj_guard_intro2.y;
	obj_guard_intro1.sprite_index = spr_guard;
	obj_guard_intro1.image_speed = 0;
	obj_guard_intro1.y_spd = 0;
}

if(timer==17340){
	sprite_index = spr_girl_walkright;
	image_speed = 0;
	image_index = 1.8;
}

if(timer==17320){
	sprite_index = spr_girl_walkup;
	image_speed = 0;
	image_index = 1.8;
}

if(timer==17260){
	sprite_index = spr_girl_walkright;
	image_speed = 0;
	image_index = 1.8;
}

if(timer==17240){
	sprite_index = spr_girl;
}

if(timer==17180){
	image_speed = 1;
	sprite_index = spr_girl_transform_intro;
}

if(timer==15900){
	sprite_index = spr_girl_walkright;
	image_speed = 0;
	image_index = 1.8;
}

if(timer==15880){
	sprite_index = spr_girl;
	timer = 15800;
}

if(timer==15780){
	sprite_index = spr_girl_walkdown;
	image_index = 1.8;
	image_speed = 3;
	y_spd = 2;
}

if(timer==15750){
	image_index = 1.8;
	image_speed = 0;
	y_spd = 0;
	timer = 15680;
}

if(timer==15620){
	sprite_index = spr_girl_walkup;
	image_index = 1.8;
	image_speed = 3;
	y_spd = -4;
}

if(timer<15620&&timer>15400&&y<=obj_switch1.y+20){
	sprite_index = spr_girl_walkright;
	image_index = 1.8;
	image_speed = 3;
	y_spd = 0;
	x_spd = 2;
	timer = 15399;
}

if(timer<15400&&timer>15200&&x>=944){
	x = 944;
	sprite_index = spr_girl_walkup;
	image_index = 1.8;
	image_speed = 0;
	x_spd = 0;
	timer = 15200;
}

if(timer==15150){
	obj_switch1.image_speed = 1;
}

if(timer<15150&&timer>15000&&obj_switch1.image_index = 4){
	if(obj_light.image_alpha>0){
		obj_light.image_alpha-=0.05;
	}
	else{
		timer = 15000;
	}
}

if(timer==15000){
	sprite_index = spr_girl;
}

if(timer==14950){
	sprite_index = spr_girl_walkup;
	image_index = 1.8;
}

if(timer==14920){
	obj_switch2.image_speed = 1;
}

if(timer<14920&&timer>14800&&obj_switch2.image_index = 4){
	obj_dark.dark_timer = 45;
	obj_dark.first = false;
	timer = 14800;
}

if(timer==14470){
	sprite_index = spr_girl_walkdown;
}

if(timer==14410){
	obj_chains.image_speed = 2;
}

if(timer==14406){
	obj_creacher_ctscn0.y_spd = 1;
}

if(timer==14402){
	obj_creacher_ctscn0.y_spd = -8;
	obj_creacher_ctscn0.image_index = 3;
}

if(timer==14398){
	obj_creacher_ctscn0.y_spd = 2;
	obj_creacher_ctscn0.image_index = 0;
}

if(timer<14400&&obj_creacher_ctscn0.y_spd==2&&obj_creacher_ctscn0.y>=672){
	obj_creacher_ctscn0.y = 672;
	obj_creacher_ctscn0.y_spd = 0;
	obj_creacher_ctscn0.depth = -99;
}

if(timer==14350){
	obj_creacher_ctscn0.x_spd = 6;
	obj_creacher_ctscn0.image_speed = 1;
}

if(timer<14350&&timer>14150&&obj_creacher_ctscn0.x>=1376){
	timer = 14150;
	obj_creacher_ctscn0.x = 1376;
	obj_creacher_ctscn0.image_speed = 0;
	obj_creacher_ctscn0.image_index = 2;
	obj_creacher_ctscn0.x_spd = 0;
}

if(timer==14120){
	obj_creacher_ctscn0.x_spd = -1;
}

if(timer==14090){
	obj_creacher_ctscn0.image_index = 3;
	obj_creacher_ctscn0.x_spd = 16;
	timer = 14030;
}

if(timer==13970){
	obj_creacher_ctscn0.x_spd = 0;
	sprite_index = spr_girl_walkright;
	x_spd = 4;
	image_speed = 3;
}

if(timer<13970&&timer>13670&&x>=1376){
	x = 1376;
	timer = 13670;
	sprite_index = spr_girl_walkdown;
	image_index = 1.8;
	x_spd = 0;
	y_spd = 4;
	audio_group_set_gain(audiogroup_default,0,2500);
}

if(timer<13670&&timer>13000&&y>=672){
	timer = 13000;
	y = 672;
	x_spd = 4;
	y_spd = 0;
	sprite_index = spr_girl_walkright;
	image_index = 1.8;
}

if(timer==12900){
	obj_shift.target = Room1;
	obj_shift.shift = true;
}
	


x+=x_spd;
y+=y_spd;