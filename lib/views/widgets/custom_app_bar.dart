import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          Spacer(),
          CustomIconButton(
            icon: icon,
          )
        ],
      ),
    );
  }
}
