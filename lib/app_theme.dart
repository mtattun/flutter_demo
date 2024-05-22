import 'package:flutter_demo/importer.dart';

final appTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.all(5),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 1.5,
        color: Colors.black12,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 1.5,
        color: Colors.blue,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 1.5,
        color: Colors.red,
      )
    )
  )
);