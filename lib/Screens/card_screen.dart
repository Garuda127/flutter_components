import 'package:flutter/material.dart';
import '../widgets/widgets_import.dart' show CustomCardType1, CustomCardType2;

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: const [
          CustomCardType1(),
          CustomCardType2(
            texto: 'Bonito',
            imageUrl:
                'https://naturedestinations.ca/wp-content/uploads/2019/07/Old-Man-1-1100-600x403.jpg',
          ),
          CustomCardType2(
              imageUrl:
                  'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1-1-580x386.jpg')
        ],
      ),
    );
  }
}
