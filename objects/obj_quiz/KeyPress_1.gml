// Mover entre as opções com teclas de seta e confirmar com a tecla Enter
if (keyboard_check_pressed(vk_down)) {
    selected_option = (selected_option + 1) mod 4;
}
if (keyboard_check_pressed(vk_up)) {
    selected_option = (selected_option - 1 + 4) mod 4;
}
if (keyboard_check_pressed(vk_enter)) {
    if (selected_option == correct_answer - 1) {
        show_message("Correto!"); // Mensagem para resposta correta
        answered_questions += 1; // Incrementa o contador de respostas corretas

        // Carrega a próxima pergunta
        scr_next_question();
    } else {
        show_message("Errado! Tente novamente.");
        room_goto(Room1); // Volta para a sala inicial em caso de erro
    }

    // Verifica se todas as perguntas foram respondidas corretamente
    if (answered_questions == total_questions) {
        room_goto_next(); // Avança para a próxima sala
    }
}
