import 'package:bloc/bloc.dart';


import 'package:hive_flutter/adapters.dart';


import 'package:meta/meta.dart';


import 'package:notesapp/constants.dart';


import 'package:notesapp/models/note_model.dart';


part 'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState> {

  AddNoteCubit() : super(AddNoteInitial());


  addNote(NoteModel note) async {

    emit(AddNoteLoading());


    try {

      var notesBox = Hive.box<NoteModel>(kNotesBox);


      emit(AddNotesuccess());


      await notesBox.add(note);

    } catch (e) {

      emit(AddNoteFailure(e.toString()));

    }

  }

}

