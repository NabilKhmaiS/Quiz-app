import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/add_note_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/simple_bloc_obsever/simple_bloc_obsever.dart';
import 'package:notes/views/notes_view.dart';

const kNotesBox = 'notes_box';

void main()async {


  Bloc.observer = SimpleBlocObserver();
   await Hive.initFlutter();

   await  Hive.openBox(kNotesBox);

   Hive.registerAdapter(NoteModelAdapter());

   runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // this is the main widget that will be used to display the notes
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Poppins",
        ),
        title: 'Notes App',
        home: NotesView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
//flutter clean
//flutter pub get
//flutter pub run flutter_launcher_icons