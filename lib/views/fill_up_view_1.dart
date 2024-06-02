import 'package:flutter/material.dart';
import 'package:fourps_app/views/fill_up_view_2.dart';
import 'package:fourps_app/views/signup_view.dart';

class FillUpScreen extends StatefulWidget {
  @override
  _FillUpScreenState createState() => _FillUpScreenState();
}

class _FillUpScreenState extends State<FillUpScreen> {
  DateTime? _selectedDate;
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Back',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Fill Up the Details',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            buildLabeledTextInput('Last Name', 'Enter your last name'),
            SizedBox(height: 10),
            buildLabeledTextInput('First Name', 'Enter your first name'),
            SizedBox(height: 10),
            buildLabeledTextInput('Extension Name', 'Enter your extension name'),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Birthdate'),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () async {
                    // Show date picker
                    final DateTime? pickedDate = await showDatePicker(
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
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                      controller: TextEditingController(
                        text: _selectedDate != null
                            ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                            : '',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            buildLabeledDropdown('Gender', ['Male', 'Female'], (String? value) {
              setState(() {
                _selectedGender = value;
              });
            }, 'Select your gender'),
            SizedBox(height: 10),
            buildLabeledTextInput('Present Address', 'Enter your present address'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  FillUpScreen1()));
              },
              child: Text('Next', style: TextStyle(color: Colors.white)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLabeledTextInput(String label, String hint, {Widget? suffixIcon}) {
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

  Widget buildLabeledDropdown(String label, List<String> items, ValueChanged<String?> onChanged, String hint) {
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
