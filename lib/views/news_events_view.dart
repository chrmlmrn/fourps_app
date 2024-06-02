import 'package:flutter/material.dart';

class NewsAndEventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'News & Events',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'About Pantawid Pamilyang Pilipino Program (4Ps)',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://car.dswd.gov.ph/wp-content/uploads/2023/06/conditions-1920x1142-1-1024x609.png',
                errorBuilder: (context, error, stackTrace) {
                  return Text('Image not found');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Supplementary Feeding Program',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://car.dswd.gov.ph/wp-content/uploads/2023/06/program_edited-1024x388.png',
                errorBuilder: (context, error, stackTrace) {
                  return Text('Image not found');
                },
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Text(
                'The Supplementary Feeding Program offers essential nutritional support to vulnerable groups, including pregnant women and young children, combating malnutrition through fortified meals and dietary supplements. By promoting healthy growth and development, it strengthens community resilience and fosters long-term well-being, emphasizing the platform\'s commitment to holistic community health',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
