import 'package:flutter/material.dart';
import 'package:notes_app/weidget/constant.dart';
import 'package:notes_app/weidget/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 32, left: 16, right: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title , subtitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children: [
          CustomTextField(
            onsaved: (value){
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onsaved: (value){
              subtitle = value;
            },
            hint: 'Content',
            maxLine: 5,
          ),
          const SizedBox(
            height: 45,
          ),
         CustomButton(
            onTap: (){
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              }
              else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                });
              }
            },
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
