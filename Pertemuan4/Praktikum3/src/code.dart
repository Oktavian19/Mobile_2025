void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  // print(gifts);
  // print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  var maps = [gifts, nobleGases, mhs1, mhs2];

  for (var map in maps) {
    if (map is Map<String, dynamic>) {
      map['Nama'] = 'Oktavian Eka Ramadhan';
      map['NIM'] = '2341720117';
    } else {
      map[0] = 'Oktavian Eka Ramadhan';
      map[1] = '2341720117';
    }
    print(map);
  }
}