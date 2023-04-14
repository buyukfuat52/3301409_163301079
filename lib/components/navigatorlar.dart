import 'package:flutter/material.dart';

Future<dynamic> navigateGeriDonmedenGit(BuildContext context, Widget sayfa) {
  return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => sayfa,
      ));
}

Future<dynamic> navigateGit(BuildContext context, Widget sayfa) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => sayfa,
      ));
}
