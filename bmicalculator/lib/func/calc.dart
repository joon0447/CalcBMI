String bmi = "";

void calc(int height, int weight) {
  double h = (height / 100) * (height / 100);
  bmi = (weight / h).toStringAsFixed(2);
  print(bmi);
}
