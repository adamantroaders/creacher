effect_create_depth(-3,ef_explosion,other.x,other.y,1,c_red);
instance_destroy(other);
rando = random_range(0.6,1.4);
audio_play_sound(snd_splosion2, 1, false, 0.3,0,rando,1);