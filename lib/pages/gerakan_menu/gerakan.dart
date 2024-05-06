import 'package:flutter/material.dart';

class GerakanList extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'text': 'Puppy Stretch',
      'image': 'assets/images/mv1.png',
      'description': 'Puppy Stretch adalah gerakan yang membantu meregangkan otot-otot punggung, bahu, dan dada dengan posisi mirip anjing yang sedang meregangkan tubuhnya. ',
    },
    {
      'text': 'Mountain Pose',
      'image': 'assets/images/mv2.png',
      'description': 'Mountain Pose adalah posisi awal dasar dalam yoga, di mana tubuh berdiri tegak dengan kaki rapat dan tangan di sisi tubuh.',
    },
    {
      'text': 'Warrior Pose',
      'image': 'assets/images/mv3.png',
      'description': 'Warrior Pose adalah serangkaian pose yang melibatkan tubuh dalam posisi yang menyerupai seorang prajurit yang siap bertarung.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Gerakan'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(item['image']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(item['text']),
            subtitle: Text(item['description']), // Added description text here
            trailing: ElevatedButton(
              onPressed: () {
                // Action when button is pressed
                Navigator.pushNamed(context, "cameraAccess");
                print('Button pressed for ${item['text']}');
              },
              child: Text('Start'),
            ),
            onTap: () {
              // Action when list tile is tapped
              print('List tile tapped for ${item['text']}');
            },
          );
        },
      ),
    );
  }
}
