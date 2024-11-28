// Define a posição fixa para onde o objeto será enviado
// Define a posição fixa para onde o objeto será enviado
var fixed_x = 578; // Coordenada X
var fixed_y =512; // Coordenada Y

// Atualiza a posição do objeto para a posição fixa
x = fixed_x;
y = fixed_y;

// Reduz uma vida e verifica reinício
global.vidas -= 1;

if (global.vidas <= 0) {
    game_restart(); // Reinicia o jogo se as vidas acabarem
} else {
    // Toca o som e destrói o objeto colidido
    audio_play_sound(snd_sdn_dano, 1, false);
}
