import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/insta_title.png',
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
    );
  }
}
