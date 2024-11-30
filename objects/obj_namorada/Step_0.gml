if (instance_exists(obj_aluno)) {
    // Posição do aluno
    var aluno_x = obj_aluno.x;
    var aluno_y = obj_aluno.y;

    // Calcular a direção para seguir o aluno
    var direcao = point_direction(x, y, aluno_x, aluno_y);

    // Mover na direção do aluno
    var velocidade = 2; // Ajuste conforme necessário
    x += lengthdir_x(velocidade, direcao);
    y += lengthdir_y(velocidade, direcao);
} else {
    // Caso o aluno não exista, pare ou execute outra ação
    // Exemplo: fazer a namorada parar
    velocidade = 0;
}

var _margem_esquerda = 0;
var _margem_direita = room_width;
var _margem_superior = 0;
var _margem_inferior = room_height;

if (x < _margem_esquerda) x = _margem_esquerda;
if (x > _margem_direita) x = _margem_direita;
if (y < _margem_superior) y = _margem_superior;
if (y > _margem_inferior) y = _margem_inferior;
