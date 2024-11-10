/// @description Desenhar pop-up com animação suave
if (show_popup) {
    // Calcula a posição para centralizar o pop-up
    var draw_x = x - (target_width * scale / 2);
    var draw_y = y - (target_height * scale / 2);

    // Desenhar o sprite do pop-up com a escala
    draw_sprite_ext(PopUP, 0, draw_x, draw_y, 0.5 * scale, 0.5 * scale, 0, c_white, 1); // Reduz a escala para metade
}
