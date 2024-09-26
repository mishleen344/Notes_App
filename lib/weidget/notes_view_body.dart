
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(text: 'Notes',icon: Icons.search,),
          Expanded(child: NotesListView()),
          
        ],
      ),
    );
  }
}
