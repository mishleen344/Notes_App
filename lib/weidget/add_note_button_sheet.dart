import 'package:flutter/material.dart';
import 'package:notes_app/weidget/custom_text_field.dart';
class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 32 , left: 16 , right: 16),
        child: Column(
          children: [
            CustomTextField(),

          ],
        ),
      ),
    );
  }
}
