import 'package:flutter/material.dart';
import 'widgets/recipe_info_panel.dart';
import 'widgets/recipe_image.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          constraints: const BoxConstraints(maxWidth: 900),
          child: Card(
            elevation: 6,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: RecipeInfoPanel(),
                ),
                Expanded(
                  flex: 3,
                  child: RecipeImage(),
                )
              ],
            ),
          ),
        )
      ) 
    );
  }
}