
  import 'package:flutter/material.dart';

Widget buildPixelIdCard(Widget child) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // Shadow position
          ),
        ],
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: child,
    );
  }
