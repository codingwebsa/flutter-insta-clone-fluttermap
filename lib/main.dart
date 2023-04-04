import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: const AppBarTheme(
            elevation: 1,
            color: Colors.white,
            iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1))),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: currentPage == 0
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                icon: Icon(
                  Icons.search,
                  color: currentPage == 1
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 2;
                  });
                },
                icon: Icon(
                  Icons.ondemand_video,
                  color: currentPage == 2
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 3;
                  });
                },
                icon: Icon(
                  Icons.card_travel,
                  color: currentPage == 3
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  color: currentPage == 4
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
