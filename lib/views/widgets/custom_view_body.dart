import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SafeArea(
            child: CustomAppBar(),
          ),
          NoteItem(),
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.orangeAccent.shade200,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Note 1',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'my note here will come later ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              trailing: Icon(
                Icons.delete,
                color: Colors.black,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 24, top: 16),
              child: Text(
                '21 January 2023',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
