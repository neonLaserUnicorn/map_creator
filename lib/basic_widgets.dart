import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  const MainButton({ 
    Key? key,
    required this.onPressed,
    required this.text,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( bottom: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4.0,12.0,4.0,8.0),
            child: Text('$text',
            style: const TextStyle(
              fontFamily: 'Consolas',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              ),
           // textAlign: TextAlign.start,
            ),
          ),
          style: ButtonStyle(
            alignment: Alignment.bottomLeft,
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black45),
            shadowColor: MaterialStateProperty.all<Color>(Colors.black),
            )
          ),
      ),
    );
  }
}