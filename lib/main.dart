import 'package:flutter_components/routes/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

import 'Screens/screens_imports.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      //* Una función que se llama cuando la aplicación intenta navegar a una ruta que no está definida
      //* en el mapa de `rutas`.
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      },
    );
  }
}
