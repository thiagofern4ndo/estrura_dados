  /* Algoritmo que conforme o tamanho do imput aumenta em "N" o tempo de de execução aumenta em (log n)
   basicamente significa que o imput cresce muito mais rapido que o tempo de execução.
   Algoritmo de busca binaria */
   import 'dart:io';
  buscaBinaria (List<int> listaNumeros, int valor) {
    int low = 0;
    int high = listaNumeros.length -1;

    while (low <= high) {
      int mid = ((low + high) / 2).floor();

      if (listaNumeros[mid] == valor) {
        return mid; 
      } else if (listaNumeros[mid] < valor) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }
    return -1;
   }

void main () {

  var listaOrdenada = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print('Digite o Numero  do indice que deseja buscar na lista');
int valor = int.parse(stdin.readLineSync()!);

int resultado = buscaBinaria(listaOrdenada, valor);

if(resultado != -1) {
  print('Valor encontrado no índice $resultado');
} else {
  print('Valor não encontrado');
}
}