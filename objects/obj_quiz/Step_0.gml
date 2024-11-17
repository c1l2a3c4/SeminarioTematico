// Evento Step do objeto do quiz
for (var i = 0; i < array_length(options); i++) {
    // Define a posição de desenho das opções para verificação de toque
    var option_x = 100; // Coordenada X inicial das opções (ajuste conforme necessário)
    var option_y = 150 + i * 50; // Coordenada Y com espaçamento entre as opções

    // Verifica se a tela foi tocada e se o toque está na área de uma opção
    if (device_mouse_check_button_pressed(0, mb_left) &&
        device_mouse_x(0) > option_x && device_mouse_x(0) < option_x + 300 && // Largura da área de toque
        device_mouse_y(0) > option_y && device_mouse_y(0) < option_y + 40) {  // Altura da área de toque

        selected_option = i; // Marca a opção tocada como selecionada

        // Verifica se a opção selecionada está correta
        if (selected_option == correct_answer - 1) {
            show_message_async("Correto!"); // Mensagem para resposta correta
            answered_questions += 1; // Incrementa o contador de respostas corretas

            // Carrega a próxima pergunta
            scr_next_question();
        } else {
            show_message_async("Errado! Tente novamente.");
            room_goto(Room1); // Volta para a sala inicial em caso de erro
        }

        // Verifica se todas as perguntas foram respondidas corretamente
        if (answered_questions == total_questions) {
            room_goto_next(); // Avança para a próxima sala
        }
    }
}
