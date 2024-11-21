/// @description Inicializar variáveis do pop-up
show_popup = true; // Mostrar o pop-up inicialmente

// Variáveis para animação suave
scale = 0;
scale_speed = 0.05; // Ajuste a velocidade de transição conforme necessário

// Posição centralizada do pop-up, ajustada para mais abaixo na tela
x = 680 ;
y = 440; // Ajuste vertical para descer o pop-up (aumente/decrsça este valor conforme necessário)

// Tamanho alvo (ajuste conforme necessário)
target_width = 640; // Metade do tamanho original
target_height = 360; // Metade do tamanho original

// Criar o botão "obj_botao_next" nas mesmas coordenadas, com ajuste
var button_x = x - (target_width / 2) + 628 - x;
var button_y = y - (target_height / 2) + 479 - y;

// Criar a instância do botão
instance_create_layer(button_x, button_y, "Instances_1", obj_botao_next);
