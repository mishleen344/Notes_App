
import 'package:flutter/material.dart';
class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),

      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24,bottom: 24, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text("Flutter tips"
                , style: TextStyle(
                  color: Colors.black,
                  fontSize: 28
                  ,
                ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16 , bottom: 16),
                child: Text("Build your Career with Mishleen Micheal"
                  , style: TextStyle(
                      color: Colors.black.withOpacity(.4),
                      fontSize: 20
                  ),),
              ),
              trailing: IconButton( onPressed: (){},icon: const Icon (Icons.delete) , color: Colors.black,iconSize: 25,),
            ),
            Padding(
              padding: const EdgeInsets.only(right:  24),
              child: Text("May 21.2022"
                , style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 18
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
