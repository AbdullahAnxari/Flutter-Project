import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';

class CategoryCard extends StatefulWidget {
  final String imagePath;
  final String title;

  const CategoryCard({required this.imagePath, required this.title});

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        width: 160,
        height: 135,
        decoration: BoxDecoration(
          border: Border.all(
            color: _isSelected ? Colors.blue : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: kBlue50,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                widget.imagePath,
                width: 30,
                height: 30,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.title,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
