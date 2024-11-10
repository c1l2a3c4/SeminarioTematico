function scr_generate_question() {
	

// Escolher uma pergunta aleatória
var index = irandom(array_length(questions) - 1);
return questions[index];

}
