import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({ Key? key , required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 10)
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
        child: child
    );
  }
}