// Tamanho da escala dos corações (ajustado para 0.2)
var escala = 0.5;
// Espaçamento entre os corações (ajustado para 60)
var espacamento = 60;

// Verifica se o sprite de coração está definido
if (sprite_exists(spr_coracao)) {
    // Desenha o número de corações baseado em global.vidas
    for (var i = 0; i < global.vidas; i++) {
        draw_sprite_ext(
            spr_coracao,  // Sprite do coração
            0,            // Subimagem
            x + (i * espacamento), // Posição X com espaçamento
            y,            // Posição Y
            escala,       // Escala horizontal
            escala,       // Escala vertical
            0,            // Ângulo de rotação
            c_white,      // Cor
            1             // Opacidade
        );
    }
} else {
    // Mostra um aviso no console para debug
    show_debug_message("Sprite 'spr_coracao' não está definido!");
}
