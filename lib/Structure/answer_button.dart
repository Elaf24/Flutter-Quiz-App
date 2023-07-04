import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onTap});
  final String answer;
  final void Function()
      onTap; // amra define korbo ki korbe button ta tai ekta function generate korsi

  @override
  Widget build(context) {
    return ElevatedButton(
      //custom widget created  with this widget
      onPressed: onTap,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: const BorderSide(color: Colors.black),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(vertical: 12, horizontal: 50),
        ),
      ),
      child: Text(
        answer,
        textAlign: TextAlign.center,

      ),
    );
  }
}
