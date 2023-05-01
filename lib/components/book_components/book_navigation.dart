import 'package:flutter/material.dart';

class BookNavigationButton extends StatelessWidget {
  final Color bg;
  final double wt;
  final double ht;
  final Color border;
  final String name;
  final Color showborder;
  final VoidCallback navigate;

  const BookNavigationButton({
    super.key,
    required this.bg,
    required this.wt,
    required this.ht,
    required this.border,
    required this.name,
    required this.showborder,
    required this.navigate,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Align(
        alignment: FractionalOffset.topLeft,
        child: Container(
          height: ht,
          width: wt,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: showborder)),
          child: Center(
            child: Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
        ),
      ),
    );
  }
}
