import 'package:bmicalculator/screens/home.dart';

void maleColor() {
  if (!gender) {
    gender = true;
  }
}

void femaleColor() {
  if (gender) {
    gender = false;
  }
}
