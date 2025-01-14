import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubits/add_note_cubit.dart';
import 'package:notes/views/widgets/add_note_form.dart';



class AddNoteBottomsheet extends StatelessWidget {
   AddNoteBottomsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit , AddNoteState>(
            listener: (context, state) {
              if(state is AddNoteFailure)
                {
                  print('friled ${state.errorMessage}');
                }
              if (state is AddNoteSuccess){
                Navigator.pop(context);
              }

          },
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is AddNoteLoading ? true : false,
                  child: AddNoteForm());
            },
           )




        ));
  }}


