import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/view/notes_view.dart';
import 'package:notes_app/weidget/constant.dart';

void main() async {
  await Hive.initFlutter();

 await Hive.openBox(kNotesBox);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,),
      home:const NotesView(),
    );
  }
}
