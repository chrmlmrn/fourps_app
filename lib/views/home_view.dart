import 'package:flutter/material.dart';
import 'package:fourps_app/views/news_events_view.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('        Home', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_outlined, size: 30, color: Colors.red,),
            onPressed: () {

            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Calendar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TableCalendar(
                firstDay: DateTime.utc(2021, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                calendarStyle: CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'News & Event',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsAndEventsScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.red, // Set the text color to red
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    child: Text('View More...'),
                  ),
                ]
              ),

            ),
            Image.network(
              'https://car.dswd.gov.ph/wp-content/uploads/2023/06/conditions-1920x1142-1-1024x609.png',
              errorBuilder: (context, error, stackTrace) {
                return Text('Image not found');
              },
            ),
            Image.network(
              'https://car.dswd.gov.ph/wp-content/uploads/2023/06/program_edited-1024x388.png',
              errorBuilder: (context, error, stackTrace) {
                return Text('Image not found');
              },
            ),
          ],
        ),
      ),
    );
  }
}
