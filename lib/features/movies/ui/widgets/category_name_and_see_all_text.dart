import 'package:flutter/material.dart';

class CategoryNameAndSeeAllText extends StatelessWidget {
  const CategoryNameAndSeeAllText({
    super.key,
    required this.categoryName,
    required this.onTap,
  });
  final VoidCallback onTap;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          categoryName,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Colors.white70,
          ),
        ),
        Spacer(),
        InkWell(
          onTap: onTap,
          child: Text(
            'see all',
            style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 12),
          ),
        ),
        SizedBox(width: 12),
      ],
    );
  }
}
