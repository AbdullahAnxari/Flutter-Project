import 'package:edu_career/lib/src/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class TypesCard extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool? isChecked;
  final Function(bool?)? onChanged;

  const TypesCard({
    required this.text,
    required this.icon,
    this.isChecked,
    required this.onChanged,
  });

  @override
  State<TypesCard> createState() => _TypesCardState();
}

class _TypesCardState extends State<TypesCard> {
  bool? _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhiteColor,
      ),
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Icon(widget.icon),
          const SizedBox(width: 8),
          Text(widget.text),
          const Spacer(),
          RoundCheckBox(
            checkedColor: kBlueColour,
            size: 27,
            isChecked: _currentValue ?? false,
            onTap: (newValue) {
              setState(() {
                _currentValue = newValue;
                widget.onChanged!(newValue!);
              });
            },
          ),
        ],
      ),
    );
  }
}
