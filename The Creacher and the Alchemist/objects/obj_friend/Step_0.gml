if(obj_shift.char=="creacher"&&pushable&&keyboard_check_pressed(vk_space)&&timer==-15){
	if((obj_creacher.x-x)<-127&&(obj_creacher.x-x)>-160&&abs(obj_creacher.y-y)<64){
		if(!place_meeting(x+64,y,WALL)&&!place_meeting(x+64,y,obj_girl)&&!place_meeting(x+64,y,obj_block)){
			dir = "right";
			timer = 8;
		}
	}
	if((obj_creacher.x-x)>127&&(obj_creacher.x-x)<160&&abs(obj_creacher.y-y)<64){
		if(!place_meeting(x-64,y,WALL)&&!place_meeting(x-64,y,obj_girl)&&!place_meeting(x-64,y,obj_block)){
			dir = "left";
			timer = 8;
		}
	}
	if((obj_creacher.y-y)<-127&&(obj_creacher.y-y)>-160&&abs(obj_creacher.x-x)<64){
		if(!place_meeting(x,y+64,WALL)&&!place_meeting(x,y+64,obj_girl)&&!place_meeting(x,y+64,obj_block)){
			dir = "down";
			timer = 8;
		}
	}
	if((obj_creacher.y-y)>127&&(obj_creacher.y-y)<160&&abs(obj_creacher.x-x)<64){
		if(!place_meeting(x,y-64,WALL)&&!place_meeting(x,y-64,obj_girl)&&!place_meeting(x,y-64,obj_block)){
			dir = "up";
			timer = 8;
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
	x+=8;
}
if(mvng=="left"){
	x-=8;
}
if(mvng=="down"){
	y+=8;
}
if(mvng=="up"){
	y-=8;
}
if(timer>0){
	timer--;
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
	sprite_index = spr_friend;
	image_index = 20;
}

if(!image_index>0){
	if(room==Room1||room==Room2||room==Room3||room==Room4||room==Room5||room==Room6||room==Room7||room==Room8||room==Room9||room==Room10||room==Room11||room==Room12||room==Room13||room==Room14||room==Room15||room==Room16||room==Room17||room==Room18){
		sprite_index = spr_friend;
	}
	else{
		sprite_index = spr_friend_trans;
	}
	
	
	
	
}