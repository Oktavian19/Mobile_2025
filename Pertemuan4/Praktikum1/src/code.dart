void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  final List<String?> list = List<String?>.filled(5, null);

  list[1] = "Oktavian Eka Ramadhan";
  assert(list[1] == "Oktavian Eka Ramadhan");
  
  list[2] = "2341720117";
  assert(list[2] == "2341720117");

  print(list);
}