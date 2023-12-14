import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/custome_search_icon.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});

  final void Function()? onPressed;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        CustomeSearchIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
