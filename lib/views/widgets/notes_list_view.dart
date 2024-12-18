import 'package:flutter/cupertino.dart';
import 'package:notes/views/widgets/custom_nots_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
     return   Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(padding: EdgeInsets.zero
        ,itemCount: 7,itemBuilder: (context, index) {

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: CustomNotsItem(),
        );


      },),
    );
  }
}
