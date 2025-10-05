import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget{
  final int rating;
  final int reviewCount;

  const RatingStars({super.key, required this.rating, required this.reviewCount});

  @override
  Widget build(BuildContext context) {
    final starList = List<Widget>.generate(5, (index) {
      return Icon(
        index < rating ? Icons.star : Icons.star_border,
        color: Colors.black,
        size: 20,
      );
    });
    return Row(
      children: [
        ...starList,
        const SizedBox(width: 10),
        Text('$reviewCount Reviews',
          style: const TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}