// Inicializa o quiz com uma lista de perguntas
global.selected_option = 0;
all_questions = [
    ["Qual dos componentes abaixo é considerado o cérebro do computador\nresponsável por executar instruções?", "\n\nDisco Rígido", "\n\nMemória RAM", "\n\nCPU (Unidade Central de Processamento)", "\n\nPlaca de Vídeo", 3],
    ["Qual é o sistema numérico usado pelos computadores para processar dados?", "Decimal", "Binário", "Octal", "Hexadecimal", 2],
    ["Qual é a função principal da memória RAM?", "Armazenar dados de forma permanente", "Executar operações matemáticas", "Armazenar dados temporários enquanto o computador está em uso", "Proteger o computador contra vírus",3],
    
];

// Inicializa a lista de perguntas restantes
remaining_questions = all_questions; 

// Carrega a primeira pergunta
scr_next_question();  // Chama a função para inicializar a primeira pergunta

// Inicializa as variáveis de controle
selected_option = 0; // Nenhuma opção selecionada inicialmente
answered_questions = 0; // Número de perguntas respondidas corretamente
total_questions = 3; // Total de perguntas a serem respondidas
