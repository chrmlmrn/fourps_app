import 'package:flutter/material.dart';
import 'apply_view_1.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:typed_data';
import 'validated_screen.dart';

class ApplyScreen2 extends StatefulWidget {
  @override
  _ApplyScreenState createState() => _ApplyScreenState();
}

class _ApplyScreenState extends State<ApplyScreen2> {
  @override
  void _navigateToValidatedScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ValidatedScreen(),
      ),
    );
  }

  String? _selectedGender;
  String? _selectedBirthDocument;
  List<String> _fileNames = [];
  final _formKey = GlobalKey<FormState>();

  // Function to handle file selection
  Future<void> _selectFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null && result.files.isNotEmpty) {
        final PlatformFile file = result.files.single;

        if (!kIsWeb) {
          // For mobile and desktop platforms
          final String filePath = file.path!;
          final String fileName = file.name;
          setState(() {
            _fileNames.add(fileName);
          });
          print('File selected: $fileName');
        } else {
          // For web platform
          final String fileName = file.name;
          final Uint8List bytes = file.bytes!;
          setState(() {
            _fileNames.add(fileName);
          });
          print('File selected: $fileName');
        }
      } else {
        print('No file selected');
      }
    } catch (e) {
      print('Error while picking the file: $e');
    }
  }

  // Function to show the list of uploaded files
  void _showFilesDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Uploaded Files'),
          content: _fileNames.isNotEmpty
              ? SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _fileNames.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    _fileNames[index],
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              },
            ),
          )
              : const Text('No files uploaded.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          'Apply',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'School Details',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    buildLabeledTextInput('School', 'Enter your school'),
                    const SizedBox(height: 10),
                    buildLabeledTextInput(
                        'School Address', 'Enter your School Address'),
                    const SizedBox(height: 10),
                    buildLabeledTextInput(
                        'Grade Level', 'Enter your Grade Level'),
                    const SizedBox(height: 20),
                    const Text(
                      'Documents',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    buildLabeledDropdown(
                      'Document for Verification (2)',
                      ['PSA', 'NSO'],
                          (String? value) {
                        setState(() {
                          _selectedBirthDocument = value;
                        });
                      },
                      'Birth Certificate',
                    ),
                    Row(children: [
                      SizedBox(height: 50),
                      Padding(padding: EdgeInsets.only(left: 100)),
                      ElevatedButton(
                        onPressed: _selectFile,
                        child: const Text('Select File'),
                      )
                    ]),
                    const SizedBox(height: 20),
                    buildLabeledDropdown(
                      'School Card',
                      ['Card', 'ID'],
                          (String? value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                      'Select Card',
                    ),
                    Row(
                      children: [
                        SizedBox(height: 30),
                        Padding(padding: EdgeInsets.only(left: 45)),
                        ElevatedButton(
                          onPressed: _selectFile,
                          child: const Text('Select File'),
                        ),

                        SizedBox(height: 50), // Vertical space at the top
                        Padding(
                          padding: EdgeInsets.only(left: 40), // Left padding
                          child: ElevatedButton(
                            onPressed: _showFilesDialog,
                            child: const Text('Files'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate())
                            _showSubmitDialog(context);
                        },
                        child: const Text(
                          'SUBMIT',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to build labeled text input field
  Widget buildLabeledTextInput(String label, String hint) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }

  void _showSubmitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Submission Successful'),
          content: Text('Submission will be verify to be qualified!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                _navigateToValidatedScreen(context);
              },
            ),
          ],
        );
      },
    );
  }

  // Function to build labeled dropdown field
  Widget buildLabeledDropdown(String label, List<String> options,
      ValueChanged<String?> onChanged, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButtonFormField<String>(
          hint: Text(hint),
          value: null,
          items: options.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: onChanged,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please select an option';
            }
            return null;
          },
        ),
      ],
    );
  }
}
