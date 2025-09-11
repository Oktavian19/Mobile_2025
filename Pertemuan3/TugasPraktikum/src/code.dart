bool isPrime(int number) {
  if (number <= 1) return false;
  for (var i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void printPrimes(int end) {
  for (var i = 2; i <= end; i++) {
    if (isPrime(i)) {
      print("$i. 2341720117 Oktavian Eka Ramadhan");
    } else {
      print("$i");
    }
  }
}

void main() {
  int number = 201;
  printPrimes(number);
}