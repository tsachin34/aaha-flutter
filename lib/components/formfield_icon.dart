import 'package:flutter/material.dart';

class FormFieldIcon extends StatelessWidget {
  const FormFieldIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(6)),
      child: Icon(
        icon,
        size: 32,
      ),
    );
  }
}
