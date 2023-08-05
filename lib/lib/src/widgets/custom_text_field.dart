import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edu_career/lib/src/constants/colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final IconData icon;
  final bool obscureValue;

  const CustomTextField({
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.keyboardType,
    required this.onChanged,
    required this.icon,
    required this.obscureValue,
  });
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: widget.obscureValue,
        controller: widget.controller,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: Icon(
            widget.icon,
            color: _isSelected ? kBlackColour : kGreyColour,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: _isSelected ? kBlackColour : kGreyColour,
            ),
          ),
        ),
        onTap: () {
          setState(() {
            _isSelected = true;
          });
        });
  }
}

// validator: (value) {
//   if (value!.isEmpty) {
//     return 'Enter Email';
//   }
//   return null;
// },
