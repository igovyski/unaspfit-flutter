import 'package:flutter/material.dart';
import 'package:unasfit/components/search_bar.dart';
import 'package:unasfit/models/exercise.dart';

class ExerciseDetailPage extends StatelessWidget {
  const ExerciseDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Exercise exercise =
        ModalRoute.of(context)!.settings.arguments as Exercise;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBarWidget(isHome: false),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(exercise.imageUrl),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              exercise.name,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              exercise.description,
            ),
          ),
        ],
      ),
    );
  }
}
