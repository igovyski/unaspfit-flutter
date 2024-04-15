import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive Slide Box Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InteractiveSlideBoxDemo(),
    );
  }
}

class InteractiveSlideBoxDemo extends StatefulWidget {
  @override
  _InteractiveSlideBoxDemoState createState() =>
      _InteractiveSlideBoxDemoState();
}

class _InteractiveSlideBoxDemoState extends State<InteractiveSlideBoxDemo> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<String> imageUrls = [
    'https://treinomestre.com.br/wp-content/uploads/2014/01/supino-reto.jpg.webp',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive Slide Box Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
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
                itemCount: imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(imageUrls.length, (index) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index ? Colors.blue : Colors.grey,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
