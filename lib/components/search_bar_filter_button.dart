import 'package:flutter/material.dart';

class SearchBarFilterButton extends StatelessWidget {
  const SearchBarFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.filter_alt,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
