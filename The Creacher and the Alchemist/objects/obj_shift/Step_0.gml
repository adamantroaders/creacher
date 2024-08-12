if(image_index==0&&instance_exists(obj_girl)&&(keyboard_check_pressed(vk_shift)||finalshift)&&shift_timer<0&&!place_meeting(obj_girl.x,obj_girl.y,obj_block)&&obj_girl.canmove){
	if(finalshift){
		ending = true;
	}
	finalshift = false;
	lastchar = char;
	obj_girl.image_speed = 0;
	obj_creacher.image_speed = 0;
	if(char=="girl"){
		obj_girl.sprite_index = spr_girl;
	}
	char = "none";
	persistify = true;
	swaptimer = 27;
	image_speed = 1;
	shift_timer = 60;
	obj_creacher.pushingx=false;
	obj_creacher.pushingy=false;
}
if(swaptimer>0){
	swaptimer--;
}
if(swaptimer==0){
	room = target_room;
	swaptimer = -15;
	if(room==Room18&&!obj_girl_ctscn2.first){
		obj_creacher.x = 720;
		obj_creacher.lastx = 720;
		obj_creacher.y = 1296;
		obj_creacher.lasty = 1296;
	}
	
	
	if(lastchar=="girl"){
		obj_girl.image_speed = 0;
		obj_girl.sprite_index = spr_girl_trans;
		if(obj_creacher.image_index==1){
			temp_img_ind = 2.93;
		}
		else{
			temp_img_ind = 0.93;
		}
		obj_creacher.sprite_index = spr_creacher_1;
		obj_creacher.image_index = temp_img_ind;
		
		if(instance_exists(obj_friend)&&instance_nearest(0,0,obj_friend).image_index<1){
			temp = instance_nearest(0,0,obj_friend);
			if(!temp.snail&&!temp.guard){
			temp.sprite_index = spr_friend_trans;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(0,room_height,obj_friend).image_index<1){
			temp = instance_nearest(0,room_height,obj_friend);
			if(!temp.snail&&!temp.guard){
			temp.sprite_index = spr_friend_trans;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width,0,obj_friend).image_index<1){
			temp = instance_nearest(room_width,0,obj_friend);
			if(!temp.snail&&!temp.guard){
			temp.sprite_index = spr_friend_trans;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width,room_height,obj_friend).image_index<1){
			temp = instance_nearest(room_width,room_height,obj_friend);
			if(!temp.snail&&!temp.guard){
			temp.sprite_index = spr_friend_trans;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width/2,room_height*0.7,obj_friend).image_index<1){
			temp = instance_nearest(room_width/2,room_height*0.7,obj_friend);
			if(!temp.snail&&!temp.guard){
			temp.sprite_index = spr_friend_trans;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width*0.6,room_height*0.7,obj_friend).image_index<1){
			temp = instance_nearest(room_width*0.6,room_height*0.7,obj_friend);
			if(!temp.snail&&!temp.guard){
			temp.sprite_index = spr_friend_trans;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width*0.67,room_height*0.7,obj_friend).image_index<1){
			temp = instance_nearest(room_width*0.67,room_height*0.7,obj_friend);
			if(!temp.snail&&!temp.guard){
			temp.sprite_index = spr_friend_trans;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width*0.75,room_height*0.7,obj_friend).image_index<1){
			temp = instance_nearest(room_width*0.75,room_height*0.7,obj_friend);
			if(!temp.snail&&!temp.guard){
			temp.sprite_index = spr_friend_trans;
			}
		}
	}
	else{
		if((obj_creacher.image_index>=1 && obj_creacher.image_index<3)){
			temp_img_ind = 1;
			obj_creacher.image_index = 2.93;
		}
		else{
			temp_img_ind = 0;
			obj_creacher.image_index = 0.93;
		}
		obj_creacher.sprite_index = spr_creacher_trans;
		obj_creacher.image_index = temp_img_ind;
		obj_girl.image_speed = 0;
		obj_girl.sprite_index = spr_girl;
		if(instance_exists(obj_friend)&&instance_nearest(0,0,obj_friend).image_index<1){
			tempy = instance_nearest(0,0,obj_friend);
			if(!tempy.snail){
				tempy.sprite_index = spr_friend;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width,0,obj_friend).image_index<1){
			tempy = instance_nearest(room_width,0,obj_friend);
			if(!tempy.snail){
				tempy.sprite_index = spr_friend;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(0,room_height,obj_friend).image_index<1){
			tempy = instance_nearest(0,room_height,obj_friend);
			if(!tempy.snail){
				tempy.sprite_index = spr_friend;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width,room_height,obj_friend).image_index<1){
			tempy = instance_nearest(room_width,room_height,obj_friend);
			if(!tempy.snail){
				tempy.sprite_index = spr_friend;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width/2,room_height*0.7,obj_friend).image_index<1){
			tempy = instance_nearest(room_width/2,room_height*0.7,obj_friend)
			if(!tempy.snail){
				tempy.sprite_index = spr_friend;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width*0.6,room_height*0.7,obj_friend).image_index<1){
			tempy = instance_nearest(room_width*0.6,room_height*0.7,obj_friend)
			if(!tempy.snail){
				tempy.sprite_index = spr_friend;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width*0.67,room_height*0.7,obj_friend).image_index<1){
			tempy = instance_nearest(room_width*0.67,room_height*0.7,obj_friend)
			if(!tempy.snail){
				tempy.sprite_index = spr_friend;
			}
		}
		if(instance_exists(obj_friend)&&instance_nearest(room_width*0.75,room_height*0.7,obj_friend).image_index<1){
			tempy = instance_nearest(room_width*0.75,room_height*0.7,obj_friend)
			if(!tempy.snail){
				tempy.sprite_index = spr_friend;
			}
		}
	}
}
if room==target_room && image_index=1{
	image_speed = 0;
	image_index = 0;
	/*if(room==Room1){
		target_room = Room1_shadow;
	}
	if(room==Room1_shadow){
		target_room = Room1;
	}
	if(room==Room2){
		target_room = Room2_shadow;
	}
	if(room==Room2_shadow){
		target_room = Room2;
	}
	if(room==Room3){
		target_room = Room3_shadow;
	}
	if(room==Room3_shadow){
		target_room = Room3;
	}
	if(room==Room4){
		target_room = Room4_shadow;
	}
	if(room==Room4_shadow){
		target_room = Room4;
	}
	if(room==Room1){
		target_room = Room1_shadow;
	}
	if(room==Room1_shadow){
		target_room = Room1;
	}
	if(room==Room2){
		target_room = Room2_shadow;
	}
	if(room==Room2_shadow){
		target_room = Room2;
	}
	if(room==Room1){
		target_room = Room1_shadow;
	}
	if(room==Room1_shadow){
		target_room = Room1;
	}
	if(room==Room2){
		target_room = Room2_shadow;
	}
	if(room==Room2_shadow){
		target_room = Room2;
	}
	if(room==Room1){
		target_room = Room1_shadow;
	}
	if(room==Room1_shadow){
		target_room = Room1;
	}
	if(room==Room2){
		target_room = Room2_shadow;
	}
	if(room==Room2_shadow){
		target_room = Room2;
	}
	if(room==Room1){
		target_room = Room1_shadow;
	}
	if(room==Room1_shadow){
		target_room = Room1;
	}
	if(room==Room2){
		target_room = Room2_shadow;
	}
	if(room==Room2_shadow){
		target_room = Room2;
	}
	if(room==Room1){
		target_room = Room1_shadow;
	}
	if(room==Room1_shadow){
		target_room = Room1;
	}
	if(room==Room2){
		target_room = Room2_shadow;
	}
	if(room==Room2_shadow){
		target_room = Room2;
	}
	if(room==Room1){
		target_room = Room1_shadow;
	}
	if(room==Room1_shadow){
		target_room = Room1;
	}
	if(room==Room2){
		target_room = Room2_shadow;
	}
	if(room==Room2_shadow){
		target_room = Room2;
	}
	if(room==Room1){
		target_room = Room1_shadow;
	}
	if(room==Room1_shadow){
		target_room = Room1;
	}
	if(room==Room2){
		target_room = Room2_shadow;
	}
	if(room==Room2_shadow){
		target_room = Room2;
	}
	*/
	if(lastchar=="girl"){
		char = "creacher";
	}
	else{
		char = "girl";
		obj_girl.facing = "down";
	}
	persistify = false;
}
if(shift_timer>0){
	shift_timer--;
}
if(shift_timer==0){
	shift_timer = -15;
}

if(shift){
	image_speed = 1;
	realshift_timer = 60;
	shift = false;
}
if(reset_timer>-50){
	reset_timer--;
}
if(reset_timer==0){
	room = nexttarget;
	reset_timer = -15;
	shift2 = false;
	char = "girl";
	//obj_girl.canmove = false;
}
if(realreset_timer==0){
	nexttarget = room;
	room = rm_title;
}

if(realshift_timer==33){
	room = target;
	if(shift2){
		reset_timer = 1;
	}
	char = "girl";
	
}

if((room==target||(room==nexttarget&&nexttarget!=rm_title)) && image_index==1 && image_speed==-1){
	image_speed = 0;
	image_index = 0;
	target = rm_title;
	nexttarget = rm_title;
	if(instance_exists(obj_girl)){
		obj_girl.canmove = true;
	}
	realshift_timer = 0;
}

if(realshift_timer>0){
	realshift_timer--;
	if(instance_exists(obj_girl)){
		obj_girl.canmove = false;
	}
}
if(realshift_timer==0){
	realshift_timer = -15;
}
if(resetti||keyboard_check_pressed(ord("R")))&&room!=rm_title&&room!=rm_end&&room!=rm_intro&&image_index==0{
	resetti = false;
	if(image_speed==0){
	nexttarget = room;
	
	if(room==Room1_shadow){
		nexttarget = Room1;
	}
	if(room==Room2_shadow){
		nexttarget = Room2;
	}
	if(room==Room3_shadow){
		nexttarget = Room3;
	}
	if(room==Room4_shadow){
		nexttarget = Room4;
	}
	if(room==Room5_shadow){
		nexttarget = Room5;
	}
	if(room==Room6_shadow){
		nexttarget = Room6;
	}
	if(room==Room7_shadow){
		nexttarget = Room7;
	}
	if(room==Room8_shadow){
		nexttarget = Room8;
	}
	if(room==Room9_shadow){
		nexttarget = Room9;
	}
	if(room==Room10_shadow){
		nexttarget = Room10;
	}
	if(room==Room11_shadow){
		nexttarget = Room11;
	}
	if(room==Room12_shadow){
		nexttarget = Room12;
	}
	if(room==Room13_shadow){
		nexttarget = Room13;
	}
	if(room==Room14_shadow){
		nexttarget = Room14;
	}
	if(room==Room15_shadow){
		nexttarget = Room15;
	}
	if(room==Room16_shadow){
		nexttarget = Room16;
	}
	if(room==Room17_shadow){
		nexttarget = Room17;
	}
	if(room==Room18_shadow){
		nexttarget = Room18;
	}
	if(room==rm_test_shadow){
		nexttarget = rm_test;
	}
	char = "none";
	lastchar = "creacher";
	obj_girl.canmove = false;
	target = rm_title;
	shift = true;
	shift2 = true;
	maybeweird = true;
	}
}
if(reset_timer>-50){
	if(instance_exists(obj_girl)){
		obj_girl.canmove = true;
	}
}
/*if(keyboard_check_pressed(vk_backspace)){
room_restart();
}*/
if(starttimer>0){
	starttimer--;
}
if(starttimer==0){
	starttimer = -15;
	if(room==Room1){
		target_room = Room1_shadow;
	}
	if(room==Room1_shadow){
		target_room = Room1;
	}
	if(room==Room2){
		target_room = Room2_shadow;	
	}
	if(room==Room2_shadow){
		target_room = Room2;
	}
	if(room==Room3){
		target_room = Room3_shadow;
	}
	if(room==Room3_shadow){
		target_room = Room3;
	}
	if(room==Room4){
		target_room = Room4_shadow;	
	}
	if(room==Room4_shadow){
		target_room = Room4;
	}
	if(room==Room5){
		target_room = Room5_shadow;	
	}
	if(room==Room5_shadow){
		target_room = Room5;
	}
	if(room==Room6){
		target_room = Room6_shadow;	
	}
	if(room==Room6_shadow){
		target_room = Room6;
	}
	if(room==Room7){
		target_room = Room7_shadow;	
	}
	if(room==Room7_shadow){
		target_room = Room7;
	}
	if(room==Room8){
		target_room = Room8_shadow;	
	}
	if(room==Room8_shadow){
		target_room = Room8;
	}
	if(room==Room9){
		target_room = Room9_shadow;	
	}
	if(room==Room9_shadow){
		target_room = Room9;
	}
	if(room==Room10){
		target_room = Room10_shadow;	
	}
	if(room==Room10_shadow){
		target_room = Room10;
	}
	if(room==Room11){
		target_room = Room11_shadow;	
	}
	if(room==Room11_shadow){
		target_room = Room11;
	}
	if(room==Room12){
		target_room = Room12_shadow;	
	}
	if(room==Room12_shadow){
		target_room = Room12;
	}
	if(room==Room13){
		target_room = Room13_shadow;	
	}
	if(room==Room13_shadow){
		target_room = Room13;
	}
	if(room==Room14){
		target_room = Room14_shadow;	
	}
	if(room==Room14_shadow){
		target_room = Room14;
	}
	if(room==Room15){
		target_room = Room15_shadow;	
	}
	if(room==Room15_shadow){
		target_room = Room15;
	}
	if(room==Room16){
		target_room = Room16_shadow;	
	}
	if(room==Room16_shadow){
		target_room = Room16;
	}
	if(room==Room17){
		target_room = Room17_shadow;	
	}
	if(room==Room17_shadow){
		target_room = Room17;
	}
	if(room==Room18){
		target_room = Room18_shadow;	
	}
	if(room==Room18_shadow){
		target_room = Room18;
	}
	if(room==rm_test){
		target_room = rm_test_shadow;	
	}
	if(room==rm_test_shadow){
		target_room = rm_test;
	}
	
	
}

if(pause&&keyboard_check_pressed(vk_escape)&&image_speed==0&&instance_exists(obj_girl)&&obj_girl.canmove){
	pause = false;
	char = lastchar;
	if(instance_exists(obj_dark)){
		obj_dark.visible = false;
	}
	if(instance_exists(obj_returnbutton)){
		obj_returnbutton.visible = false;
		obj_returnprompt.visible = false;
	}
}
else if(!pause&&keyboard_check_pressed(vk_escape)&&image_speed==0&&instance_exists(obj_girl)&&obj_girl.canmove){
	pause = true;
	lastchar = char;
	char = "none";
}

if(obj_returnbutton.ret){
	target = rm_title;
	nexttarget = target;
	char = "none";
	lastchar = "creacher";
	obj_girl.canmove = false;
	target = rm_title;
	shift = true;
	shift2 = true;
	maybeweird = true;
	shift = true;
	obj_returnbutton.ret = false;
	audio_group_set_gain(audiogroup_default, 0, 500);
	
}