import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
// ana ktbt hwde mn chatgpt

        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        // List<NoteModel> notes =
        //     BlocProvider.of<NotesCubit>(context).notes ?? [];
        // if (notes.isEmpty) {
        //   return const Center(child: Text('No notes available.'));
        // }
        // hwwe keteb hyde ana ktbt yalle fw2u l2nnu 3ata error
        // List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: NoteItem(
                    note: notes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
