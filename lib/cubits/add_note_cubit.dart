import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_model.dart';

import '../main.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)async{
    emit(AddNoteLoading());

 try {
   var  notesBok =  Hive.box<NoteModel>(kNotesBox);
   emit(AddNoteSuccess());
   await notesBok.add(note);
 }  catch (e) {
   AddNoteFailure(e.toString());
 }
  }
}
