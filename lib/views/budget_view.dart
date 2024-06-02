import 'package:flutter/material.dart';

class BudgetScreen extends StatefulWidget {
  @override
  _BudgetScreenState createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  Map<int, bool> tileStates = {
    1: false,
    2: false,
    3: false,
    4: false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        title: Text('Budget'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Text(
                'PHP 456',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Text('Budget'),
                  LinearProgressIndicator(
                    value: 0.228, // Calculated based on 456/2000
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Grocery: -544 PHP'),
                        Text('Date: 16 May, 2024'),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Electric Bill: -1000 PHP'),
                        Text('Date: 16 May, 2024'),
                      ],
                    ),
                  ),
                  Text('List:'),
                  ListTile(
                    leading: Checkbox(
                      value: tileStates[1] ?? false,
                      onChanged: (bool? value) {
                        setState(() {
                          tileStates[1] = value ?? false;
                        });
                      },
                      activeColor: tileStates[1]! ? Colors.red : null,
                    ),
                    title: Text('Rice'),
                    key: Key('Rice'),
                  ),
                  ListTile(
                    leading: Checkbox(
                      value: tileStates[2] ?? false,
                      onChanged: (bool? value) {
                        setState(() {
                          tileStates[2] = value ?? false;
                        });
                      },
                      activeColor: tileStates[2]! ? Colors.red : null,
                    ),
                    title: Text('Monthly Rent'),
                    key: Key('MonthlyRent'),
                  ),
                  ListTile(
                    leading: Checkbox(
                      value: tileStates[3] ?? false,
                      onChanged: (bool? value) {
                        setState(() {
                          tileStates[3] = value ?? false;
                        });
                      },
                      activeColor: tileStates[3]! ? Colors.red : null,
                    ),
                    title: Text('Gas'),
                    key: Key('Gas'),
                  ),
                  ListTile(
                    leading: Checkbox(
                      value: tileStates[4] ?? false,
                      onChanged: (bool? value) {
                        setState(() {
                          tileStates[4] = value ?? false;
                        });
                      },
                      activeColor: tileStates[4]! ? Colors.red : null,
                    ),
                    title: Text('Electric Bill'),
                    key: Key('ElectricBill'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
