import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';

import 'list_note_items.dart';

class CustomBody extends StatefulWidget {
  const CustomBody({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBody> createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {
  @override
  void initState() {
    BlocProvider.of<ViewNoteCubit>(context).fetchAllNotes();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SafeArea(child: CustomAppBar(icon: Icons.search, title: 'Notes')),
          Expanded(
            child: ListNoteItems(),
          ),
        ],
      ),
    );
  }
}
