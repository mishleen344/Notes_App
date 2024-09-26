import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../weidget/add_note_button_sheet.dart';
import '../weidget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteButtonSheet();
              });
        },
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
