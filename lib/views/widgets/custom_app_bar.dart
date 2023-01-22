import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Note",
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        Spacer(),
        CustomIconButton()
      ],
    );
  }
}
