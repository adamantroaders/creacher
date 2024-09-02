if(instance_exists(obj_title)&&obj_title.donedone){
	if(timer>0){
		timer--;
	}
}

if(timer==0){
x+=v;
if(x<1024){
if(v>0){
	v+=a;
}
else{
	v = 0;
	done = true;
}
}
if(x>1024){
if(v<0){
	v-=a;
}
else{
	v = 0;
	done = true;
}
}
}

if(open){
	image_index = lvl;
}

if(done){
	if(open && visible && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self) && obj_shift.image_index==0){
		obj_shift.target = target;
		obj_shift.shift = true;
		girlmovetimer = 65;
	}
}

if(room==rm_title){
	visible = true;
}
else{
	visible = false;
}

/*if(keyboard_check_pressed(vk_lcontrol)){
	if(keyboard_check(ord("P"))){
		obj_shift.target = rm_test;
	}
	if(keyboard_check(ord("1"))){
		obj_shift.target = Room1;
	}
	if(keyboard_check(ord("2"))){
		obj_shift.target = Room2;
	}
	if(keyboard_check(ord("3"))){
		obj_shift.target = Room3;
	}
	if(keyboard_check(ord("4"))){
		obj_shift.target = Room4;
	}
	if(keyboard_check(ord("5"))){
		obj_shift.target = Room5;
	}
	if(keyboard_check(ord("6"))){
		obj_shift.target = Room6;
	}
	if(keyboard_check(ord("7"))){
		obj_shift.target = Room7;
	}
	if(keyboard_check(ord("8"))){
		obj_shift.target = Room8;
	}
	if(keyboard_check(ord("9"))){
		obj_shift.target = Room9;
	}
	if(keyboard_check(ord("0"))){
		obj_shift.target = Room10;
	}
	if(keyboard_check(ord("Q"))){
		obj_shift.target = Room11;
	}
	if(keyboard_check(ord("W"))){
		obj_shift.target = Room12;
	}
	if(keyboard_check(ord("E"))){
		obj_shift.target = Room13;
	}
	if(keyboard_check(ord("R"))){
		obj_shift.target = Room14;
	}
	if(keyboard_check(ord("T"))){
		obj_shift.target = Room15;
	}
	if(keyboard_check(ord("Y"))){
		obj_shift.target = Room16;
	}
	if(keyboard_check(ord("U"))){
		obj_shift.target = Room17;
	}
	if(keyboard_check(ord("I"))){
		obj_shift.target = Room18;
	}
	if(keyboard_check(ord("O"))){
		obj_shift.target = rm_end;
	}
	if(keyboard_check(ord("P"))){
		obj_shift.target = rm_intro;
	}
	obj_shift.shift = true;
}*/

if(girlmovetimer==0){
	if(instance_exists(obj_girl)){
	obj_girl.canmove = true;
	}
	girlmovetimer = -15;
}
if(girlmovetimer>0){
	girlmovetimer--;
}

if(lvl==2){
	target = Room2;
	if(room==target){
		open = true;
	}
}
if(lvl==3){
	target = Room3;
	if(room==target){
		open = true;
	}
}
if(lvl==4){
	target = Room4;
	if(room==target){
		open = true;
	}
}
if(lvl==5){
	target = Room5;
	if(room==target){
		open = true;
	}
}
if(lvl==6){
	target = Room6;
	if(room==target){
		open = true;
	}
}
if(lvl==7){
	target = Room7;
	if(room==target){
		open = true;
	}
}
if(lvl==8){
	target = Room8;
	if(room==target){
		open = true;
	}
}
if(lvl==9){
	target = Room9;
	if(room==target){
		open = true;
	}
}
if(lvl==10){
	target = Room10;
	if(room==target){
		open = true;
	}
}
if(lvl==11){
	target = Room11;
	if(room==target){
		open = true;
	}
}
if(lvl==12){
	target = Room12;
	if(room==target){
		open = true;
	}
}
if(lvl==13){
	target = Room13;
	if(room==target){
		open = true;
	}
}
if(lvl==14){
	target = Room14;
	if(room==target){
		open = true;
	}
}
if(lvl==15){
	target = Room15;
	if(room==target){
		open = true;
	}
}
if(lvl==16){
	target = Room16;
	if(room==target){
		open = true;
	}
}
if(lvl==17){
	target = Room17;
	if(room==target){
		open = true;
	}
}
if(lvl==18){
	target = Room18;
	if(room==target){
		open = true;
	}
}

if(filetimer>0){
filetimer--;
}

if(filetimer==0){
	filetimer = -15;
	lroom = obj_datasave.lastlvl;
	if(lroom>=lvl){
		open = true;
	}
}