void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  //var names3 = {}; // Creates a map, not a set.

  names1.add('Oktavian Eka Ramadhan');
  names1.add('2341720117');

  names2.addAll(names1);

  print(names1);
  print(names2);
  //print(names3);
}