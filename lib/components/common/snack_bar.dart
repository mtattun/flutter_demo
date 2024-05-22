import 'package:flutter_demo/importer.dart';

// 参考： https://flutter.salon/flutter/snackbar/

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).size.height - 100
      ),
      content: Row(
        children: [
          const Icon(
            Icons.error,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              message,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              )
            ),
          ),
        ],
      ),
      showCloseIcon: true,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.redAccent,
      closeIconColor: Colors.white,
    )
  );
}