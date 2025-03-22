import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  final Color color;

  const AuthWidget({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onTap,
    this.width = 0.9,
    this.height = 0.06,
    this.color = const Color(0xffE3E4E8),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: mediaQuery.height * height,
        width: mediaQuery.width * width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 24),
            const SizedBox(width: 10),
            Flexible( // Prevents text overflow
              child: Text(
                text,
                style: const TextStyle(fontSize: 16),
                overflow: TextOverflow.ellipsis, // Adds '...' if text is too long
              ),
            ),
          ],
        ),
      ),
    );
  }
}
