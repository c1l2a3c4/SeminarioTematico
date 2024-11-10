/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

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
    } else {
        show_message("Errado! Tente novamente.");
    }
    room_goto_next(); // Avança para a próxima room ou reinicia a anterior
}
