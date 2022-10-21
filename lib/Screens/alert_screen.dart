import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          elevation: 0.0,
          title: const Text('Holas'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Contenido xd'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar'))
          ],
        );
      },
    );
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Row(
            children: const [Icon(Icons.apple), Text('CuppertinoDialog')],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                  'Proident fugiat elit amet veniam reprehenderit aliqua cupidatat ea dolor veniam velit.')
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => Platform.isAndroid
                  ? displayDialog(context)
                  : displayDialogIOS(context),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.android),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Mostrar Alerta'),
                ],
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => displayDialogIOS(context),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.apple),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Mostrar Alerta Cuppertino'),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        child: const Icon(
          Icons.close,
          color: Colors.white70,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
