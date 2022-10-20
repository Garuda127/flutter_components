import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);
  final options = const ['Megaman', 'MetalGear', 'Minecraft'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 1'),
      ),
      body: ListView(
        children: <Widget>[
          ...options
              .map(
                (e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_forward),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
