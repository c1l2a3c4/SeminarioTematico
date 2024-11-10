// Inicializa o quiz com uma lista de perguntas
all_questions = [
    ["Qual é a capital do Brasil?", "Brasília", "São Paulo", "Rio de Janeiro", "Belo Horizonte", 1],
    ["Qual o maior oceano do mundo?", "Atlântico", "Ártico", "Índico", "Pacífico", 4],
    ["Quem descobriu o Brasil?", "Cristóvão Colombo", "Pedro Álvares Cabral", "Vasco da Gama", "Fernão de Magalhães", 2],
    ["Quantos estados tem o Brasil?", "26", "25", "27", "28", 3]
];

// Inicializa a lista de perguntas restantes
remaining_questions = all_questions; 

// Carrega a primeira pergunta
scr_next_question();  // Chama a função para inicializar a primeira pergunta

// Inicializa as variáveis de controle
selected_option = 0; // Nenhuma opção selecionada inicialmente
answered_questions = 0; // Número de perguntas respondidas corretamente
total_questions = 4; // Total de perguntas a serem respondidas
