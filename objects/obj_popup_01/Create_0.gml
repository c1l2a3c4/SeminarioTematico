/// @description Inicializar variáveis do pop-up
show_popup = true; // Mostrar o pop-up inicialmente

// Variáveis para animação suave
scale = 0;
scale_speed = 0.05; // Ajuste a velocidade de transição conforme necessário

// Posição centralizada do pop-up
x = room_width / 2;
y = room_height / 2;

// Tamanho alvo (ajuste conforme necessário)
target_width = 640; // Metade do tamanho original
target_height = 360; // Metade do tamanho original

// Criar o botão "obj_botao_next" nas mesmas coordenadas, com ajuste vertical
var button_x = x; 
var button_y = y + (target_height / 2) - 70; 

// Criar a instância do botão
instance_create_layer(button_x, button_y, "Instances_1", obj_botao_next);
