import 'package:flutter/material.dart';
import 'apply_view_2.dart';

class ApplyScreen1 extends StatefulWidget {
  @override
  _ApplyScreen1State createState() => _ApplyScreen1State();
}

class _ApplyScreen1State extends State<ApplyScreen1> {
  DateTime? _selectedDate;
  String? grants;
  String? _selectedGender;
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Text('Apply',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Grants",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                              height: 30,
                              child: RadioListTile(
                                title: Text("Educational Assistance"),
                                value: "Educational",
                                fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.red),
                                groupValue: grants,
                                onChanged: (value) {
                                  setState(() {
                                    grants = value.toString();
                                  });
                                },
                              )),
                          SizedBox(
                              height: 30,
                              child: RadioListTile(
                                title: Text("Preschool and Childcare"),
                                value: "Preschool",
                                fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.red),
                                groupValue: grants,
                                onChanged: (value) {
                                  setState(() {
                                    grants = value.toString();
                                  });
                                },
                              )),
                          SizedBox(
                              height: 30,
                              child: RadioListTile(
                                title: Text("Junior High School"),
                                value: "JHS",
                                fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.red),
                                groupValue: grants,
                                onChanged: (value) {
                                  setState(() {
                                    grants = value.toString();
                                  });
                                },
                              )),
                          SizedBox(
                              height: 30,
                              child: RadioListTile(
                                title: Text("Senior High School"),
                                value: "SHS",
                                fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.red),
                                groupValue: grants,
                                onChanged: (value) {
                                  setState(() {
                                    grants = value.toString();
                                  });
                                },
                              )),
                          SizedBox(
                              height: 30,
                              child: RadioListTile(
                                title: Text("Monthly Health"),
                                value: "MH",
                                fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.red),
                                groupValue: grants,
                                onChanged: (value) {
                                  setState(() {
                                    grants = value.toString();
                                  });
                                },
                              )),
                          SizedBox(
                              height: 30,
                              child: RadioListTile(
                                title: Text("Monthly Subsidy (Rice)"),
                                value: "MSR",
                                fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.red),
                                groupValue: grants,
                                onChanged: (value) {
                                  setState(() {
                                    grants = value.toString();
                                  });
                                },
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      // Changed ListView to SingleChildScrollView
                      child: Column(
                        children: <Widget>[
                          Form(
                            key: _formKey,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Beneficiary Details',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(height: 20),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Last Name',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your last name',
                                    ),
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter last name';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'First Name',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your first name',
                                    ),
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter first name';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Middle Name',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your Middle name',
                                    ),
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Middle name';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Extension Name',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your Extension name',
                                    ),
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Extension name';
                                      }
                                      return null;
                                    },
                                  ),
                                ]),
                          ),
                          SizedBox(height: 20),
                          Form(
                              key: _formKey1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Date of Birth'),
                                  SizedBox(height: 5),
                                  GestureDetector(
                                    onTap: () async {
                                      final DateTime? pickedDate =
                                      await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime.now(),
                                      );
                                      if (pickedDate != null) {
                                        setState(() {
                                          _selectedDate = pickedDate;
                                        });
                                      }
                                    },
                                    child: AbsorbPointer(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Select your birthdate',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                          ),
                                          suffixIcon:
                                          Icon(Icons.calendar_today),
                                        ),
                                        controller: TextEditingController(
                                          text: _selectedDate != null
                                              ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                                              : '',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please put your Birth Date';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(height: 20),
                          buildLabeledDropdown(
                            'Sex',
                            ['Male', 'Female'],
                                (String? value) {
                              setState(() {
                                _selectedGender = value;
                              });
                            },
                            'Select your gender',
                          ),
                          SizedBox(height: 10),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                if (_formKey.currentState!.validate() &&
                                    _formKey1.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ApplyScreen2()));
                                }

                                if (_formKey1.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ApplyScreen2()));
                                }
                              },
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget buildLabeledTextInput(String label, String hint,
      {Widget? suffixIcon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 5),
        TextFormField(
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }

  Widget buildLabeledDropdown(String label, List<String> items,
      ValueChanged<String?> onChanged, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 5),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          value: _selectedGender,
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
