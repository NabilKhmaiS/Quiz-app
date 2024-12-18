import 'package:flutter/material.dart';
import 'package:notes/cor/App_colors.dart';
import 'package:notes/views/widgets/edit_note_view.dart';

class CustomNotsItem extends StatelessWidget {
  const CustomNotsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        },));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(

          color: AppColors.KprimaryCplor,
          borderRadius: BorderRadius.circular(16),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(

              title: Text("Flutter Tips",style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text("Build your career with Nabil Khamis",style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18,
                ),),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,size: 30,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text("May21 .2022",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ),

          ],
        ),
      ),
    );;
  }
}

