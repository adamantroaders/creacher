if((!obj_shift.persistify&&obj_shift.reset_timer<-50&&(room==Room7||room==Room13))||(current_bgm==mus_title&&obj_shift.reset_timer<0)){
	//audio_stop_sound(playing);
	audio_group_set_gain(audiogroup_default,1,0);
}