import 'package:flutter/material.dart';

class SearchBarBackButton extends StatelessWidget {
  const SearchBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context); // Navegar de volta
      },
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
