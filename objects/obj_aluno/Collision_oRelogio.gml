/// @description Código de colisão para reiniciar posição do personagem e tocar som de dano

// Toca o som de dano na colisão
audio_play_sound(snd_sdn_dano, 1, false);

// Reinicia a posição do personagem para o ponto inicial
x = 987;
y = 2266;
