
if(patrol=="up"){
	x_spd = 0;
	y_spd = -1;
}
if(patrol=="down"){
	x_spd = 0;
	y_spd = 1;
}
if(patrol=="left"){
	x_spd = -1;
	y_spd = 0;
}
if(patrol=="right"){
	x_spd = 1;
	y_spd = 0;
}


//facing variable
if(y_spd>0 && x_spd==0){
	facing = "down";
}
if(y_spd<0 && x_spd==0){
	facing = "up";
}
if(x_spd>0 && y_spd==0){
	facing = "right";
}
if(x_spd<0 && y_spd==0){
	facing = "left";
}

if(sprite_index!=spr_guard_stone){
if(facing=="down"){
	if(y_spd>0){
		sprite_index = spr_guard_walkdown;
		image_speed = img_spd;
	}
	else{
		sprite_index = spr_guard_walkdown;
		image_speed = 0;
		image_index = 1.8;
	}
}
if(facing=="up"){
	if(y_spd<0){
		sprite_index = spr_guard_walkup;
		image_speed = img_spd;
	}
	else{
		sprite_index = spr_guard_walkup;
		image_speed = 0;
		image_index = 1.8;
	}
}
if(facing=="right"){
	if(x_spd>0){
		sprite_index = spr_guard_walkright;
		image_speed = img_spd;
	}
	else{
		sprite_index = spr_guard_walkright;
		image_speed = 0;
		image_index = 1.8;
	}
}
if(facing=="left"){
	if(x_spd<0){
		sprite_index = spr_guard_walkleft;
		image_speed = img_spd;
	}
	else{
		sprite_index = spr_guard_walkleft;
		image_speed = 0;
		image_index = 1.8;
	}
}
if(facing=="neutral"){
	sprite_index = spr_guard;
}
}

if(sprite_index!=spr_guard_stone&&visible){
y+=y_spd*movespd;
x+=x_spd*movespd;
}

if(sprite_index!=spr_guard_stone){
if(timer>0){
	timer--;
	x_spd = 0;
	y_spd = 0;
	if(patrol!="none"){
	lastpatrol = patrol;
	}
	patrol = "none";
}
if(stoptimer==waittime){
	stoptimer = 0;
	timer = 0;
}
if(timer==0){
	timer = -15;
	timer2 = walktime;
	stop = false;
	if(lastpatrol=="down"){
		patrol = "up";
	}
	else if(lastpatrol=="left"){
		patrol = "right";
	}
	else if(lastpatrol=="right"){
		patrol = "left";
	}
	else{
		patrol = "down";
	}
}

if(timer2>0){
	timer2--;
}

if(timer2==0||stop){
	timer2 = -15;
	timer = waittime;
	if(stop){
		stoptimer++;
	}
	stop = false;
}
}
if(ttimer==0){
	ttimer = -15;
	mvng = "none";
}
if(ttimer>0){
	ttimer--;
}





if(obj_shift.char=="creacher"&&pushable&&keyboard_check_pressed(vk_space)&&ttimer==-15){
	if((obj_creacher.x-x)<-100&&(obj_creacher.x-x)>-216&&abs(obj_creacher.y-y)<72){
		if(!place_meeting(x+64,y,WALL)&&!place_meeting(x+64,y,obj_girl)&&!place_meeting(x+64,y,obj_block)){
			dir = "right";
			ttimer = 8;
		}
	}
	if((obj_creacher.x-x)>127&&(obj_creacher.x-x)<196&&abs(obj_creacher.y-(y+40))<72){
		if(!place_meeting(x-64,y,WALL)&&!place_meeting(x-64,y,obj_girl)&&!place_meeting(x-64,y,obj_block)){
			dir = "left";
			ttimer = 8;
		}
	}
	if((obj_creacher.y-y)<-127&&(obj_creacher.y-y)>-160&&abs(obj_creacher.x-x)<64){
		if(!place_meeting(x,y+64,WALL)&&!place_meeting(x,y+64,obj_girl)&&!place_meeting(x,y+64,obj_block)){
			dir = "down";
			ttimer = 8;
		}
	}
	if((obj_creacher.y-y)>127&&(obj_creacher.y-y)<200&&abs(obj_creacher.x-x)<64){
		if(!place_meeting(x,y-64,WALL)&&!place_meeting(x,y-64,obj_girl)&&!place_meeting(x,y-64,obj_block)){
			dir = "up";
			ttimer = 8;
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
if(ttimer>0){
	ttimer--;
}
if(ttimer==0){
	ttimer = -15;
	mvng = "none";
}

if(pushable){
	image_speed = 0;
	sprite_index = spr_guard_stone;
	image_index = 18
}


if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}