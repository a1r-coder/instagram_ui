import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'feed_page.dart';

class Home_page extends StatefulWidget {
  static final String id = "Home_page";
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int currentPage = 0;

  var _pages = [
    Feed_page(),
    Feed_page(),
    Feed_page(),
    Feed_page(),
    Feed_page(),
    Feed_page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(EvaIcons.cameraOutline),
          onPressed: () {},
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            icon: Icon(EvaIcons.tv),
            onPressed: () {},
            color: Colors.grey,
          ),
          IconButton(
            icon: Icon(EvaIcons.messageCircleOutline),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.home),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.search),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.plusSquareOutline),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.heartOutline),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.personOutline),
            label: "Radio",
          ),
        ],
      ),
    );
  }
}
