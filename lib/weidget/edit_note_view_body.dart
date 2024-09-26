import 'package:flutter/material.dart';
import 'package:notes_app/weidget/custom_appbar.dart';
import 'package:notes_app/weidget/custom_text_field.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(icon: Icons.check,
          text: 'Edit Note',),
          SizedBox(height: 50,),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16,),
          CustomTextField(hint: 'Content' , maxLine: 5,),
        ],
      ),
    );
  }
}
