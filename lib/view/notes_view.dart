import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../weidget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){},child: const Icon(Icons.add),
      backgroundColor: Colors.cyanAccent,foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(100)),),
      body: const NotesViewBody(),
    );
  }
}