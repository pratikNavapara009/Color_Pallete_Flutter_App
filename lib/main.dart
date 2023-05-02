import 'package:color/helpers/themeprovider.dart';
import 'package:color/screens/homepage.dart';
import 'package:color/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(useMaterial3: true),
          darkTheme: ThemeData.dark(useMaterial3: true),
          themeMode:
              (Provider.of<ThemeProvider>(context).themeModel.isDark == false)
                  ? ThemeMode.light
                  : ThemeMode.dark,
          initialRoute: 'splash',
          routes: {
            '/': (context) => const HomePage(),
            'splash': (context) => const Splash(),
          },
        );
      },
    ),
  );
}
