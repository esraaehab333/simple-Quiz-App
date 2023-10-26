import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer( {super.key, required this.anstext, required this.onPressed});
  final String anstext;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
          padding:EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(15))
      ),
      child: Text(anstext),
    );
  }
}
