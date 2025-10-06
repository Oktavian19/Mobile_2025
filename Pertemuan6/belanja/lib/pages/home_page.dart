import 'package:belanja/widgets/app_footer.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/services/item_service.dart';
import 'package:belanja/widgets/item_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Item>> futureItems;

  @override
  void initState() {
    super.initState();
    futureItems = ItemService.fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belanja'),
        backgroundColor: Colors.blueGrey[800],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: FutureBuilder<List<Item>>(
          future: futureItems,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return ItemGrid(items: snapshot.data!);
            } else {
              return const Text('No items found.');
            }
          },
        ),
      ),
      bottomNavigationBar: const AppFooter(),
    );
  }
}
