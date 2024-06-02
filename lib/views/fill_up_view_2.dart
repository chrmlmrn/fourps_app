import 'package:flutter/material.dart';
import 'package:fourps_app/views/fill_up_view_3.dart';

class FillUpScreen1 extends StatefulWidget {
  @override
  _FillUpScreen1State createState() => _FillUpScreen1State();
}

class _FillUpScreen1State extends State<FillUpScreen1> {
  DateTime? _selectedDate;
  String? _selectedGender;
  String? _selectedCivilStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(''),
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
            buildLabeledTextInput('Name of House Grantee', 'Last Name / First Name / Middle Name'),
            SizedBox(height: 10),
            buildLabeledDropdown('Gender', ['Male', 'Female'], (String? value) {
              setState(() {
                _selectedGender = value;
              });
            }, 'Select Gender'),
            SizedBox(height: 10),
            buildLabeledTextInput('Age', 'Enter Age'),
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
            buildLabeledTextInput('Present Address', 'Region / Province / City / Barangay / No. of House'),
            SizedBox(height: 10),
            buildLabeledDropdown('Civil Status', ['Single', 'Married', 'Widowed', 'Divorced'], (String? value) {
              setState(() {
                _selectedCivilStatus = value;
              });
            }, 'Select Civil Status'),
            SizedBox(height: 10),
            buildLabeledTextInput('Religion', 'Enter Religion'),
            SizedBox(height: 10),
            buildLabeledTextInput('Highest Educational Attainment', 'Enter Highest Educational Attainment'),
            SizedBox(height: 10),
            buildLabeledTextInput('Occupation', 'Enter Occupation'),
            SizedBox(height: 10),
            buildLabeledTextInput('Estimated Monthly Income', 'Enter Estimated Monthly Income'),
            SizedBox(height: 10),
            buildLabeledTextInput('PhilHealth No.', 'Enter PhilHealth No.'),
            SizedBox(height: 10),
            buildLabeledTextInput('Contact No.', 'Enter Contact No.'),
            SizedBox(height: 10),
            buildLabeledTextInput('IP / Tribal Membership', 'Enter IP / Tribal Membership'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  FillUpScreen2()));
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


