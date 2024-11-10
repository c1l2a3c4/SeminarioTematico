// Desenha a pergunta e as opções de resposta
draw_text(50, 50, question_text);
for (var i = 0; i < 4; i++) {
    var y_position = 100 + (i * 30);
    if (i == selected_option) {
        draw_set_color(c_yellow); // Destaque na opção selecionada
    } else {
        draw_set_color(c_white);
    }
    draw_text(70, y_position, options[i]);
}
