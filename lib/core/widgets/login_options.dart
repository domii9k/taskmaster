import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';

Widget buildLoginOptions(IconData icon) {
  return SizedBox(
    width: 105,
    height: 51,
    child: ElevatedButton(
      onPressed: () {
        // entrar com a opcao
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: ColorsRepository().lightBlue,
        backgroundColor: ColorsRepository().cerulean,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      child: FaIcon(icon, color: ColorsRepository().white, size: 24),
    ),
  );
}
