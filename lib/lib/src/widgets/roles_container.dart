import 'package:edu_career/lib/src/constants/colors.dart';
import 'package:flutter/material.dart';

class JobRoleContainer extends StatefulWidget {
  final String text;

  JobRoleContainer({required this.text});

  @override
  State<JobRoleContainer> createState() => _JobRoleContainerState();
}

class _JobRoleContainerState extends State<JobRoleContainer> {
  bool _isSelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: _isSelected ? kWhiteColor54 : kBlueColour,
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(
            color: kGreyColour,
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 20,
            color: _isSelected ? kGreyColour : kWhiteColor,
          ),
        ),
      ),
    );
  }
}
