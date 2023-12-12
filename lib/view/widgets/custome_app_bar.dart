import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/custome_search_icon.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomeSearchIcon(),
      ],
    );
  }
}
