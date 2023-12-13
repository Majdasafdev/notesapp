import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/custome_note_item.dart';

class NotesListView extends StatelessWidget {
  NotesListView({super.key});

  final data = const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
