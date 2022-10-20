import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? texto;
  const CustomCardType2({Key? key, required this.imageUrl, this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        shadowColor: AppTheme.primary.withOpacity(0.5),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        clipBehavior: Clip.hardEdge,
        elevation: 10,
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage('images/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.fill,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (texto != null)
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(texto ?? ''),
              ),
          ],
        ),
      ),
    );
  }
}
