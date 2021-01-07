import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'days_count_screen.dart';
import 'package:valentine_day/screens/main_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  buildBottomNavigationItem(IconData icon, String title) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      title: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'BreeSerif',
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _pages = [
      {
        'page': MainScreen(),
        'title': 'Happy Valentine\'s Day',
      },
      {
        'page': DaysCountScreen(),
        'title': 'Love you Baby',
      },
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(
      () {
        _selectedPageIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectedPageIndex]['title'],
          style: TextStyle(fontFamily: 'BreeSerif'),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        onTap: _selectedPage,
        items: [
          buildBottomNavigationItem(
              MaterialCommunityIcons.heart, 'Love Quotes'),
          buildBottomNavigationItem(Icons.calendar_today, 'Days Count'),
        ],
      ),
    );
  }
}
