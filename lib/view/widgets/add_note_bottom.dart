import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/view/widgets/custom_button.dart';
import 'package:notesapp/view/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(
              hint: 'title',
            ),
            const SizedBox(height: 16),
            CustomTextField(
              hint: 'content',
              maxlines: 6,
            ),
            const SizedBox(height: 32),
            const customeButton(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
