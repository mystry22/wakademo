import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  final Color bg;
  final double wt;
  final double ht;
  final Color border;
  final String name;

  const BookButton({
    super.key,
    required this.bg,
    required this.wt,
    required this.ht,
    required this.border,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Align(
        alignment: FractionalOffset.topLeft,
        child: Container(
          height: ht,
          width: wt,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.done,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                name,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
