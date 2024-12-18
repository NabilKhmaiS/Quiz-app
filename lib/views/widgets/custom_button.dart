import 'package:flutter/material.dart';
import 'package:notes/cor/App_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.KprimaryCplor,
            borderRadius: BorderRadius.circular(14)
        ),

        width: MediaQuery.of(context).size.width,
        height: 55,
        child:const  Center(
            child: Text("Add",style: TextStyle(
                color: AppColors.black,

                fontSize: 20,
                fontWeight: FontWeight.bold
            ),)),
      ),
    );
  }
}
