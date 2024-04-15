import 'package:flutter/material.dart';
import 'package:unasfit/data/dummy_data.dart';

import 'package:unasfit/models/exercise.dart';
import 'package:unasfit/utils/app_routes.dart';

class HighlightsBox extends StatefulWidget {
  @override
  _HighlightsBoxState createState() => _HighlightsBoxState();
}

class _HighlightsBoxState extends State<HighlightsBox> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    List<Exercise> loadedExercises = dummy_exercises;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 200,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: dummy_exercises.length,
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GridTile(
                    footer: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black87, Colors.transparent],
                            begin: Alignment.centerLeft,
                            stops: [0.0, 0.65],
                            end: Alignment.centerRight),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      height: 35,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loadedExercises[index].name,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    child: GestureDetector(
                      child: Image.network(
                        loadedExercises[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          AppRoutes.EXERCISE_DETAIL,
                          arguments: loadedExercises[index],
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            height: 20,
            width: loadedExercises.length * 20,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            //decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(loadedExercises.length, (index) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Colors.grey[800]
                        : Colors.grey[200],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
