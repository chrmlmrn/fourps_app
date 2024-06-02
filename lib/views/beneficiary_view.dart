import 'package:flutter/material.dart';

class BeneficiaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(''),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Beneficiaries',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              _buildPersonalInfoItem('Name', 'Christian Gelera'),
              _buildPersonalInfoItem('Age', '12'),
              _buildPersonalInfoItem('Sex', 'Male'),
              _buildPersonalInfoItem('Relationship', 'Son'),
              _buildPersonalInfoItem('Grants', 'Junior High School'),
              Divider(), // Add divider between persons
              _buildPersonalInfoItem('Name', 'Kevin Benavidez'),
              _buildPersonalInfoItem('Age', '17'),
              _buildPersonalInfoItem('Sex', 'Male'),
              _buildPersonalInfoItem('Relationship', 'Son'),
              _buildPersonalInfoItem('Grants', 'Educational Assistance'),
              Divider(), // Add divider between persons
              _buildPersonalInfoItem('Name', 'Harold Mahilum'),
              _buildPersonalInfoItem('Age', '16'),
              _buildPersonalInfoItem('Sex', 'Male'),
              _buildPersonalInfoItem('Relationship', 'Son'),
              _buildPersonalInfoItem('Grants', 'Senior High School'),
              Divider(), // Add divider between persons
              _buildPersonalInfoItem('Name', 'Ethan Llave'),
              _buildPersonalInfoItem('Age', '5'),
              _buildPersonalInfoItem('Sex', 'Male'),
              _buildPersonalInfoItem('Relationship', 'Son'),
              _buildPersonalInfoItem('Grants', 'Preschool and Childcare'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPersonalInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
