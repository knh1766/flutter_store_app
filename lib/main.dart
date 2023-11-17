import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Bag", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/bag.jpeg", // 시그니처
                fit: BoxFit.cover, // 선택적 매개변수
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                "assets/cloth.jpeg", // 시그니처
                fit: BoxFit.cover, // 선택적 매개변수
              ),
            )
          ],
        ),
      ),
    );
  }
}
