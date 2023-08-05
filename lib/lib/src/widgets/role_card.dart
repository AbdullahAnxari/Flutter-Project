// import 'package:flutter/material.dart';
//
// class RoleCard extends StatelessWidget {
//   final VoidCallback onPressed;
//   final String text;
//   final IconData? icon;
//
//   RoleCard({
//     super.key,
//     required this.onPressed,
//     required this.text,
//     this.icon,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         padding: EdgeInsets.all(26.0),
//         child: Column(
//           children: [
//             Icon(icon),
//             SizedBox(height: 8.0),
//             Text(
//               text,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 15.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomCard extends StatefulWidget {
  final String imagePath;
  final String title;

  const CustomCard({required this.imagePath, required this.title});

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
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
        width: 140,
        height: 235,
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
                color: Colors.white,
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
