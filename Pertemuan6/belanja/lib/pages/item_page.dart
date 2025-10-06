import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/app_footer.dart';
import 'package:belanja/widgets/item_detail_body.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.blueGrey[800],
        foregroundColor: Colors.white,
      ),
      body: ItemDetailBody(item: item),
      bottomNavigationBar: const AppFooter(),
    );
  }
}
