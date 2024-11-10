function scr_generate_question() {
	
/// scr_generate_question()

// Estrutura de perguntas e respostas


// Escolher uma pergunta aleatória
var index = irandom(array_length(questions) - 1);
return questions[index];

}
