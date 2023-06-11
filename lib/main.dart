import 'package:expensetracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = const Color.fromARGB(255, 59, 181, 181);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme().copyWith(
            backgroundColor: kColorScheme, foregroundColor: Colors.white),
        cardTheme: CardTheme().copyWith(
            color: Colors.blueGrey,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(backgroundColor: kColorScheme)),
      ),
      home: Expenses(),
    );
  }
}
