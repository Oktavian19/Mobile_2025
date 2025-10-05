import 'package:flutter/material.dart';
import 'rating_stars.dart';
import 'info_column.dart';

class RecipeInfoPanel extends StatelessWidget {
  const RecipeInfoPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Strawberry Pavlova',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
            style: TextStyle(
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
          const SizedBox(height: 24),
          const RatingStars(rating: 4, reviewCount: 170),
          const SizedBox(height: 24),
          const Divider(thickness: 1),
          const SizedBox(height: 24),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InfoColumn(
                icon: Icons.kitchen_outlined,
                title: 'PREP:',
                value: '25 min',
              ),
              InfoColumn(
                icon: Icons.timer_outlined,
                title: 'COOK:',
                value: '1 hr',
              ),
              InfoColumn(
                icon: Icons.people_outlined,
                title: 'FEEDS:',
                value: '4-6',
              ),
            ],
          )
        ],
      ),
    );
  }
}