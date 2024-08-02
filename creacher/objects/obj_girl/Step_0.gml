if(obj_shift.char=="girl"){
x_spd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
y_spd = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(sprite_index!=spr_girl_transform&&(place_meeting(x+x_spd, y , WALL)||place_meeting(x+x_spd, y , obj_block))){

    var _pixelCheck = sign(x_spd);
    while (!place_meeting(x + _pixelCheck,y,WALL)&&!place_meeting(x + _pixelCheck,y,obj_block)){
        x+=_pixelCheck;
    }

    x_spd=0;
}

if (sprite_index!=spr_girl_transform&&(place_meeting( x, y +y_spd, WALL)||place_meeting( x, y +y_spd, obj_block))){
    var _pixelCheck = sign(y_spd);
    while (!place_meeting(x, y+_pixelCheck,WALL)&&!place_meeting(x, y+_pixelCheck,obj_block)){
        y+=_pixelCheck;
    }

    y_spd=0;
}

if(fix){
	if(round(random_range(0,1))==0){
		x_spd = 0;
	}
	else{
		y_spd = 0;
	}
	fix = false;
}

x+=x_spd*movespd*canmove;
y+=y_spd*movespd*canmove;

if(keyboard_check(vk_space)&&anim_timer<0){
	sprite_index = spr_girl_transform;
	image_speed = 15;
	anim_timer = 120//*fps/image_speed;
	canmove = 0;
	depth = -99;
}

	while(place_meeting(x,y,WALL)&&sprite_index!=spr_girl_transform){
		var getouttahere = round(random_range(-1,1));
		y+=getouttahere;
		x+=getouttahere;
	}
}

if(anim_timer = 0){
	anim_timer = -15;
	canmove = 1;
	facing = "neutral";
	sprite_index = spr_girl;
	image_speed = 0;
	depth = autodepth;
}
if(anim_timer > 0){
	anim_timer--;
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
if(x_spd==0 && y_spd==0 && obj_shift.char=="girl"){
	if(keyboard_check(ord("D")) - keyboard_check(ord("A"))==1)
		facing = "right";
	if(keyboard_check(ord("D")) - keyboard_check(ord("A"))==-1)
		facing = "left";
	if(keyboard_check(ord("S")) - keyboard_check(ord("W"))==1)
		facing = "down";
	if(keyboard_check(ord("S")) - keyboard_check(ord("W"))==-1)
		facing = "up";
}
if(obj_shift.persistify){
	persistent = true;
	facing = "neutral";
	if(sprite_index!=spr_girl_trans){
		sprite_index = spr_girl;
	}
}
else{
	persistent = false;
}

//facing sprites
if(obj_shift.char=="girl"&&anim_timer==-15){
if(facing=="down"){
	if(y_spd>0){
		sprite_index = spr_girl_walkdown;
		image_speed = img_spd;
	}
	else{
		sprite_index = spr_girl_walkdown;
		image_speed = 0;
		image_index = 1.8;
	}
}
if(facing=="up"){
	if(y_spd<0){
		sprite_index = spr_girl_walkup;
		image_speed = img_spd;
	}
	else{
		sprite_index = spr_girl_walkup;
		image_speed = 0;
		image_index = 1.8;
	}
}
if(facing=="right"){
	if(x_spd>0){
		sprite_index = spr_girl_walkright;
		image_speed = img_spd;
	}
	else{
		sprite_index = spr_girl_walkright;
		image_speed = 0;
		image_index = 1.8;
	}
}
if(facing=="left"){
	if(x_spd<0){
		sprite_index = spr_girl_walkleft;
		image_speed = img_spd;
	}
	else{
		sprite_index = spr_girl_walkleft;
		image_speed = 0;
		image_index = 1.8;
	}
}
if(facing=="neutral"){
	sprite_index = spr_girl;
}

if(facing=="down"&&y_spd<0){
	facing = "up";
}
if(facing=="up"&&y_spd>0){
	facing = "down";
}
if(facing=="right"&&x_spd<0){
	facing = "left";
}
if(facing=="left"&&x_spd>0){
	facing = "right";
}
if(facing=="neutral"){
	if(y_spd<0){
		facing = "down";
	}
	if(y_spd>0){
		facing = "up";
	}
}
}
if(obj_lightswitch.playtime&&visible){
	visible = false;
	canmove = false;
	obj_girl_ctscn.x = x;
	obj_girl_ctscn.y = y;
	x = 0;
	y = 0;
}


if(x<0||x>room_width){
	if(obj_girl.canmove){
	x = lastx;
	fix = true;
	}
}
else if(x>lastx+64||x<lastx-64){
	if(obj_girl.canmove){
	x = lastx;
	fix = true;
	}
}
else{
	lastx = x;
}
if(y<0||y>room_height){
	if(obj_girl.canmove){
	y = lasty;
	fix = true;
	}
}
else if(y>lasty+64||y<lasty-64){
	if(obj_girl.canmove){
	y = lasty;
	fix = true;
	}
}
else{
	lasty = y;
}