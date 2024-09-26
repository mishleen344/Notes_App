import 'package:flutter/material.dart';
import 'package:notes_app/weidget/constant.dart';
import 'package:notes_app/weidget/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.only(top: 32, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                hint: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'Content',
                maxLine: 5,
              ),
              SizedBox(
                height: 45,
              ),
              CustomButton(),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
