// Cálculo do vetor de recuo baseado na posição do objeto colidido
var dx = x - other.x; // Diferença horizontal
var dy = y - other.y; // Diferença vertical
var dist = point_distance(x, y, other.x, other.y); // Distância entre os objetos

// Normaliza o vetor para evitar recuos muito grandes
if (dist > 0) {
    dx /= dist;
    dy /= dist;
}

// Define a força do recuo
var knockback_force = 60; // Ajuste o valor para controlar a intensidade

// Aplica o recuo ao jogador
x += dx * knockback_force;
y += dy * knockback_force;

// (Opcional) Reduz uma vida e verifica reinício
global.vidas -= 1;

if (global.vidas <= 0) {
    game_restart(); // Reinicia o jogo se as vidas acabarem
} else {
    // Toca o som e destrói o objeto colidido
    audio_play_sound(snd_sdn_dano, 1, false);
}
