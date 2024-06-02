import 'package:flutter/material.dart';
import 'package:fourps_app/views/budget_view.dart';
import 'package:fourps_app/views/profile_view.dart';
import 'home_view.dart';

//bottom navbar
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    BudgetScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        height: 60.0,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.savings),
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),
              SizedBox(width: 16.0),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
              ),
              SizedBox(width: 16.0),
              IconButton(
                icon: Icon(Icons.manage_accounts),
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
