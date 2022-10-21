import 'package:flutter_components/routes/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final rutas = ['Listview1', 'Listview2', 'CardScreen', 'AlertScreen'];
  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOption;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(menuOption[index].name),
              leading: Icon(
                menuOption[index].icon,
                color: AppTheme.primary,
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: AppTheme.primary,
              ),
              onTap: () {
                Navigator.pushNamed(context, menuOption[index].route);
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOption.length),
    );
  }
}
