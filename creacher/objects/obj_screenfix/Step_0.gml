//width = browser_width - 5;
/*height = browser_height - 5;
width = height*16/9;
window_set_size(width, height);*/
/*width = 1792;
height = width*9/16;
window_set_size(width, height);*/


//MAKE C&V CHANGE SIZE AND HAVE F BE FOR FULLSCREEN ONLY. THX
if(keyboard_check_pressed(ord("F"))){

if(state==2){
	window_set_fullscreen(false);
	window_set_size(1344, 756);
	state = 1;
}
else if(state==3){
	window_set_fullscreen(false);
	window_set_size(1792, 1008);
	state = 2;
}
else if(state==0){
	window_set_fullscreen(true);
	state = 3;
}
else if(state==1){
	window_set_fullscreen(false);
	window_set_size(width, height);
	state = 0;
}

}