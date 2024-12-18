import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey= GlobalKey ();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String ? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(key: formKey,
      autovalidateMode: autovalidateMode,

      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          SizedBox(height: 16,),

          CustomTextField(
            onSaved: (value) {
              subTitle = value;

            },
            hint: 'content',maxLines: 5,),

          SizedBox(height: 32,),
          CustomButton(
            onTap:  (){
              if(formKey.currentState!.validate())
                {
                  formKey.currentState!.save();

                  //BlocProvider.of<AddNoteCubit>(context).addNote(noteModal);
                }else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(height: 16,),

        ],



      ),
    );
  }
}

