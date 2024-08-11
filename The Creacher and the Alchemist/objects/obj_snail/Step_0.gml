if(obj_shift.char=="creacher"&&pushable&&keyboard_check_pressed(vk_space)&&timer==-15){
	if((obj_creacher.x-x)<-127&&(obj_creacher.x-x)>-160&&abs(obj_creacher.y-y)<64){
		if(!place_meeting(x+2,y,WALL)&&!place_meeting(x+2,y,BABYWALL)&&!place_meeting(x+2,y,obj_block)){
			dir = "right";
			timer = 2;
		}
	}
	if((obj_creacher.x-x)>127&&(obj_creacher.x-x)<160&&abs(obj_creacher.y-y)<64){
		if(!place_meeting(x-2,y,WALL)&&!place_meeting(x-2,y,BABYWALL)&&!place_meeting(x-2,y,obj_block)){
			dir = "left";
			timer = 2;
		}
	}
	if((obj_creacher.y-y)<-113&&(obj_creacher.y-y)>-174&&abs(obj_creacher.x-x)<64){
		if(!place_meeting(x,y+2,WALL)&&!place_meeting(x,y+2,BABYWALL)&&!place_meeting(x,y+2,obj_block)){
			dir = "down";
			timer = 2;
		}
	}
	if((obj_creacher.y-y)>127&&(obj_creacher.y-y)<160&&abs(obj_creacher.x-x)<64){
		if(!place_meeting(x,y-2,WALL)&&!place_meeting(x,y-2,BABYWALL)&&!place_meeting(x,y-2,obj_block)){
			dir = "up";
			timer = 2;
		}
	}
}
else{
	dir = "none";
}
if(dir!="none"){
	mvng = dir;
}
if(mvng=="right"){
	if(!place_meeting(x+8,y,WALL)&&!place_meeting(x+8,y,BABYWALL)&&!place_meeting(x+8,y,obj_block)){
	x+=8;
	}
	else if(!place_meeting(x+2,y,WALL)&&!place_meeting(x+2,y,BABYWALL)&&!place_meeting(x+2,y,obj_block)){
	x+=2;
	}
	else{
		timer = 0;
	}
}
if(mvng=="left"){
	if(!place_meeting(x-8,y,WALL)&&!place_meeting(x-8,y,BABYWALL)&&!place_meeting(x-8,y,obj_block)){
	x-=8;
	}
	else 
	if(!place_meeting(x-2,y,WALL)&&!place_meeting(x-2,y,BABYWALL)&&!place_meeting(x-2,y,obj_block)){
	x-=2;
	}
	else{
		timer = 0;
	}
}
if(mvng=="down"){
	if(!place_meeting(x,y+8,WALL)&&!place_meeting(x,y+8,BABYWALL)&&!place_meeting(x,y+8,obj_block)){
	y+=8;
	}
	else if(!place_meeting(x,y+2,WALL)&&!place_meeting(x,y+2,BABYWALL)&&!place_meeting(x,y+2,obj_block)){
	y+=2;
	}
	else{
		timer = 0;
	}
}
if(mvng=="up"){
	if(!place_meeting(x,y-8,WALL)&&!place_meeting(x,y-8,BABYWALL)&&!place_meeting(x,y-8,obj_block)){
	y-=8;
	}
	else if(!place_meeting(x,y-2,WALL)&&!place_meeting(x,y-2,BABYWALL)&&!place_meeting(x,y-2,obj_block)){
	y-=2;
	}
	else{
		timer = 0;
	}
}
if(timer>0){
	//timer--;
}
if(timer==0){
	timer = -15;
	mvng = "none";
}

if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}

if(pushable){
	image_speed = 0;
	if(facing=="left"){
		sprite_index = spr_snail_left_stone;
	}
	if(facing=="right"){
		sprite_index = spr_snail_right_stone;
	}
	image_index = 18;
}

if(sprite_index==spr_snail_left||sprite_index==spr_snail_right){
	if(snailtimer<=0){
		snailtimer = 60;
		if(sprite_index==spr_snail_left){
			sprite_index = spr_snail_right;
		}
		else{
			sprite_index = spr_snail_left;
		}
	}
	if(snailtimer>0){
		snailtimer--;
		if(sprite_index==spr_snail_left){
			image_speed = 1;
			x-=2;
			if(room!=Room16&&room!=Room16_shadow&&(place_meeting(x-2,y,WALL)||place_meeting(x-2,y,obj_creacher)||place_meeting(x-2,y,obj_girl))){
				snailtimer = 0;
			}
			if((room==Room16||room==Room16_shadow)&&(place_meeting(x-2,y,obj_creacher)||place_meeting(x-2,y,obj_girl))){
				x+=2;
				snailtimer++;
				if(!place_meeting(x-1,y,obj_creacher)&&!place_meeting(x-1,y,obj_girl)){
					x-=1;
				}
			}
		}
		else{
			image_speed = 1;
			x+=2;
			if(room!=Room16&&room!=Room16_shadow&&(place_meeting(x+2,y,WALL)||place_meeting(x+2,y,obj_creacher)||place_meeting(x+2,y,obj_girl))){
				snailtimer = 0;
			}
			if((room==Room16||room==Room16_shadow)&&(place_meeting(x+2,y,obj_creacher)||place_meeting(x+2,y,obj_girl))){
				x-=2;
				snailtimer++;
				if(!place_meeting(x+1,y,obj_creacher)&&!place_meeting(x+1,y,obj_girl)){
					x+=1;
				}
			}
		}
	}
	if((room==Room16||room==Room16_shadow)&&(place_meeting(x+4,y,obj_creacher)||place_meeting(x+4,y,obj_girl)||place_meeting(x-4,y,obj_creacher)||place_meeting(x-4,y,obj_girl))){
		if(place_meeting(x+8,y,obj_creacher)){
			obj_creacher.x+=4;
			snailtimer-=0.5;
		}
		if(place_meeting(x-8,y,obj_creacher)){
			obj_creacher.x-=4;
			snailtimer-=0.5;
		}
		if(place_meeting(x+8,y,obj_girl)){
			obj_girl.x+=4;
			snailtimer-=0.5;
		}
		if(place_meeting(x-8,y,obj_girl)){
			obj_girl.x-=4;
			snailtimer-=0.5;
		}
	}
	if(room==Room16||room==Room16_shadow){
		if(sprite_index==spr_snail_left&&x<xmin){
			snailtimer = 0;
		}
		if(sprite_index==spr_snail_right&&x>xmax){
			snailtimer = 0;
		}
	}
}