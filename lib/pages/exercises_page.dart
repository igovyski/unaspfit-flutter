import 'package:flutter/material.dart';
import 'package:unasfit/components/highlights_box.dart';
import 'package:unasfit/components/search_bar.dart';

class ExcercisesPage extends StatelessWidget {
  const ExcercisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchBarWidget(),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  'Destaques',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          HighlightsBox(),
        ],
      ),
    );
  }
}
