import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBody(),
    );
  }
}
