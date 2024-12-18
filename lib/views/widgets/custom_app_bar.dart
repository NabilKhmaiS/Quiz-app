import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title,});

  @override

  final String title;


  Widget  build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: const TextStyle(
          fontSize: 30,
        ),),
        const   Spacer(),
       const    CustomSearch()
        ],
    );
  }
}
