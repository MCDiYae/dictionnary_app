import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final String texto;
  const TextWidget({super.key, required this.title, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            "$title\n",
            style: const TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 177, 149, 145),
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.right,
          ),
          Text(
            texto,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
