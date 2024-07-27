/*
if(instance_exists(obj_viewchange) && obj_viewchange.walk_timer==60){
    audio_stop_sound(current_bgm);
    if(room==Room2){
    audio_play_sound(mus_boss1, 0, true);
    current_bgm = mus_boss1;
    }
}
if(instance_exists(DOOR) && current_bgm==mus_boss1 && DOOR.open){
    audio_stop_sound(current_bgm);
    audio_play_sound(snd_bossdefeat, 0, false);
    current_bgm = snd_bossdefeat;
    timer = 240;
}
timer--;

if(timer==0 && room==Room2){
    audio_play_sound(mus_level2, 0, true);
    current_bgm = mus_level2;
}
*/
if(timer==0){
	timer = -15;
	audio_play_sound(current_bgm, 0, true);
}
if(timer>0){
	timer--;
}