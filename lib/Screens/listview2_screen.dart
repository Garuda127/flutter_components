import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);
  final options = const ['Megaman', 'MetalGear', 'Minecraft', 'Terraria'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(options[index]),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.pink.shade600,
                ),
                onTap: (() {}),
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
