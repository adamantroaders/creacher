if(x_spd!=0||y_spd!=0){
	audio_play_sound(stone_sliding,1,0);
}

if(obj_shift.char=="creacher"&&pushable&&keyboard_check_pressed(vk_space)&&timer==-15){
	if((obj_creacher.x-x)<-127&&(obj_creacher.x-x)>-160&&abs(obj_creacher.y-y)<64){
		if(!place_meeting(x+64,y,WALL)&&!place_meeting(x+64,y,obj_girl)&&!place_meeting(x+64,y,obj_guard)){
			dir = "right";
			timer = 8;
		}
	}
	if((obj_creacher.x-x)>127&&(obj_creacher.x-x)<160&&abs(obj_creacher.y-y)<64){
		if(!place_meeting(x-64,y,WALL)&&!place_meeting(x-64,y,obj_girl)&&!place_meeting(x-64,y,obj_guard)){
			dir = "left";
			timer = 8;
		}
	}
	if((obj_creacher.y-y)<-127&&(obj_creacher.y-y)>-160&&abs(obj_creacher.x-x)<64){
		if(!place_meeting(x,y+64,WALL)&&!place_meeting(x,y+64,obj_girl)&&!place_meeting(x,y+64,obj_guard)){
			dir = "down";
			timer = 8;
		}
	}
	if((obj_creacher.y-y)>127&&(obj_creacher.y-y)<160&&abs(obj_creacher.x-x)<64){
		if(!place_meeting(x,y-64,WALL)&&!place_meeting(x,y-64,obj_girl)&&!place_meeting(x,y-64,obj_guard)){
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
	//depth = dep;
}
else{
	persistent = false;
}