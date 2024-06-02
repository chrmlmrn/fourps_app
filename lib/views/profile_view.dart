import 'package:flutter/material.dart';
import 'package:fourps_app/views/apply_view_1.dart';
import 'package:fourps_app/views/beneficiary_view.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8.0)),
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://th.bing.com/th/id/R.55a922962dbd7807aed4b5e977ef9b55?rik=MkDowBteo3FkfQ&riu=http%3a%2f%2f3.bp.blogspot.com%2f-9k7CaF8mSCk%2fUbY435fl6HI%2fAAAAAAAABd8%2fyFb2dDgf7Ks%2fs1600%2ffunny_cat_pictures.jpg&ehk=DUVE4Daoc7EttRp41ySi7nrsudTwV3PdiUvTaXIl1BY%3d&risl=&pid=ImgRaw&r=0',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 25.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Dineros, Ivan James D.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        '4PS Member',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Divider(
                  color: Color(0xff868282),
                  thickness: 2,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => EditPersonalDetailsScreen(),
                  //   ),
                  // );
                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.edit_note_outlined,
                            size: 60,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 52.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Edit Personal Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Divider(
                  color: Color(0xff868282),
                  thickness: 2,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BeneficiaryScreen(),
                    ),
                  );
                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.people,
                            size: 60,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 52.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Beneficiaries',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Divider(
                  color: Color(0xff868282),
                  thickness: 2,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => EditBeneficiaryDetailsScreen(),
                  //   ),
                  // );
                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.edit_note_outlined,
                            size: 60,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 52.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Edit Beneficiary Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Divider(
                  color: Color(0xff868282),
                  thickness: 2,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplyScreen1(),
                    ),
                  );
                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.person_2_outlined,
                            size: 60,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 52.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Apply',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Divider(
                  color: Color(0xff868282),
                  thickness: 2,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => SettingsScreen(),
                  //   ),
                  // );
                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.settings_applications_outlined,
                            size: 60,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 52.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Settings',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 0),
                child: Divider(
                  color: Color(0xff868282),
                  thickness: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
