if(obj_shift.char=="girl"){
x_spd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
y_spd = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x+=x_spd*movespd;
y+=y_spd*movespd;
}
if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}