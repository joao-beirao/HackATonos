import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: ElevatedButton(
          onPressed: () => selectHandler(),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
            minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60.0)),
          ),
          child: Text(answerText, style: TextStyle(color: Colors.white,fontSize: 18.0),),
        ),
      ),
    );
  }
}
