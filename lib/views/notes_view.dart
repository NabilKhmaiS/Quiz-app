import 'package:flutter/material.dart';
import 'package:notes/views/widgets/notes_view_body.dart';
import 'widgets/Add_Note_BottomSheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
          ),
          context: context, builder: (context) {
          return AddNoteBottomsheet();
        },);
      },child:const  Icon(Icons.add,),),
         body:const  NotesViewBody(),

    );
  }
}


