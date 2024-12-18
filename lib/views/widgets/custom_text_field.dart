import 'package:flutter/material.dart';
import 'package:notes/cor/App_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
     validator: (value) {

        if(value?.isEmpty  ?? true )
          {
            return 'field is required';
          }else {
          return null;
        }
     },
      maxLines: maxLines,
      cursorColor: AppColors.KprimaryCplor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color:  AppColors.KprimaryCplor
        ),

        border: buildBorder(),
          enabledBorder: buildBorder(),
        focusedBorder: buildBorder(AppColors.KprimaryCplor)

      ),

    );
  }
}
 OutlineInputBorder buildBorder ([color]){
  return OutlineInputBorder(

    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color:color ?? Colors.white),
  );
}
