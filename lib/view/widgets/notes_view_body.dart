import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/custome_app_bar.dart';
import 'package:notesapp/view/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomeAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
