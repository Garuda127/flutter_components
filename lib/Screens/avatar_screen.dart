import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Illyasviel Von Einzbern'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.pink[200],
              child: const Text(
                'IVE',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage(
                'https://photos1.iorbix.com/00/00/00/00/02/85/91/69/Illyasviel-Von-Einzbern-YZR1wa8xH-b.jpg')),
      ),
    );
  }
}
