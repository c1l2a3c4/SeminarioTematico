/// @description Reproduz som de dano e reinicia som de fundo ao colidir

// Toca o som de dano na colisão
audio_play_sound(sdn_dano, 1, false);

// Verifica se o som de fundo já está tocando
if (audio_is_playing(som_de_fundo)) {
    audio_stop_sound(som_de_fundo); 
}

// Reinicia o som de fundo
audio_play_sound(som_de_fundo, 1, true); 
