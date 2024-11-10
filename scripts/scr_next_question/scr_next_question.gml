function scr_next_question() {
    if (array_length(remaining_questions) > 0) {
        // Escolhe uma pergunta aleatória da lista restante
        var index = irandom(array_length(remaining_questions) - 1);
        question_data = remaining_questions[index];
        question_text = question_data[0];
        options = [question_data[1], question_data[2], question_data[3], question_data[4]];
        correct_answer = question_data[5];

        // Remove a pergunta respondida da lista
        array_delete(remaining_questions, index, 1);

    }
}
