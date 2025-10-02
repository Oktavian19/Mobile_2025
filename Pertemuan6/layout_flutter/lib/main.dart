import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget get titleSection => Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Wisata Gunung Panderman',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Batu, Malang, Indonesia',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[500]
                ),
              ),
            ],
          ),
        ),
        /* soal 3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('3,3'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Di tengah hiruk pikuk kehidupan kota yang tak pernah berhenti,'
        'seringkali jiwa merindukan sebuah jeda untuk kembali menyatu dengan alam. '
        'Wisata gunung menawarkan lebih dari sekadar liburan;'
        'ia adalah sebuah undangan untuk sebuah petualangan yang menyegarkan fisik dan menenangkan batin. '
        'Bayangkan Anda meninggalkan kebisingan dan polusi, lalu menggantinya dengan udara sejuk yang mengisi paru-paru, '
        'melodi angin yang berdesir di antara pepohonan, dan pemandangan hijau yang membentang sejauh mata memandang. '
        'Setiap langkah di jalur pendakian adalah proses untuk menguji batas diri, menumbuhkan ketangguhan,'
        ' dan pada puncaknya, Anda akan dihadiahi pemandangan agung lautan awan atau hamparan bintang yang begitu dekat. '
        'Perjalanan ini bukan hanya tentang mencapai puncak, tetapi tentang menemukan kembali ketenangan, perspektif baru, '
        'dan rasa syukur yang mendalam. Maka, siapkan ransel Anda, mulailah melangkah, '
        'dan biarkan keagungan gunung menyembuhkan serta menginspirasi jiwa Anda. '
        'Oktavian Eka Ramadhan 2341720117',
        softWrap: true,
      ),
    );
    
    return MaterialApp(
      title: 'Flutter layout: Oktavian Eka Ramadhan 2341720117',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
            children: [
              Image.asset(
                'images/image.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          ),
        ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}