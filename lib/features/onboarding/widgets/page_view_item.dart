import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';

Widget buildPageItem(String imagePath, String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(imagePath),
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: AppStyles.styleJannaBold24,
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
          style: AppStyles.styleJannaBold16,
        ),
      ],
    ),
  );
}
