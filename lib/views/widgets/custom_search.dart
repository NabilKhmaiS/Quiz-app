import 'package:flutter/material.dart';
class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override

  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.05),
      ),
      child: Center(
      child:  const  Icon(Icons.search,
      size: 28,)
      ),
    );
  }
}
