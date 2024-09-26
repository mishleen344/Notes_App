import 'package:flutter/material.dart';

import 'custom_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
  final IconData icon;
final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style: TextStyle(fontSize: 32),),
        const Spacer(),
        CustomSearchIcon(icon: icon,),

      ],
    );
  }
}