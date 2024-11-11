/// Evento Draw - Desenhar o Pop-up com Animação Suave
if (show_popup) {
    var draw_x = x - (target_width * scale / 2);
    var draw_y = y - (target_height * scale / 2);

    draw_sprite_ext(PopUP, 0, draw_x, draw_y, 0.5 * scale, 0.5 * scale, 0, c_white, 1);
}
