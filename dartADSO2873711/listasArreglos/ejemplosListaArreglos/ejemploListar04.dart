void main(List<String> args) {
  // int a = 5;
  // int b = 4;
  // a = b;
  // b = auxiliar;
  List<int> vector = [6,5,3,1,8,7,2,4];
  int auxiliar;
  print(vector);
  print('*' * 30);
  for (var i = 0; i < vector.length; i++) {
    for (var j = 0; j < vector.length - i - 1; i++) {
      if (vector[j] > vector[j + 1]) {
        auxiliar = vector[j];
        vector[j] = vector[j + 1];
        vector[j + 1] = auxiliar;
      }
      print(vector);
    }
  }
}