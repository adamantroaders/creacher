if(obj_creacher_ctscn.hole==0||obj_creacher_ctscn.hole==-10){
	visible = true;
	obj_creacher_ctscn.visible = false;
	rando = random_range(0.6,1.4);
	rand2 = random_range(0.4,0.6);
	if(first){
		audio_play_sound(snd_splosion2, 1, false, rand2,0,rando,1);
	}
	first = false;
}
if(obj_shift.persistify){
	persistent = true;
	depth = dep;
}
else{
	persistent = false;
}