import 'package:flutter/material.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';

Widget buildItemList(BuildContext context, IconData icon, String title, Color color, String route) {
  return InkWell(
    onTap: () {
      Navigator.of(context).pushNamed(route);
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: ColorsRepository().pennBlue,
              fontFamily: 'Josefin Sans',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
  );
}
