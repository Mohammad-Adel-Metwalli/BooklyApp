import 'package:flutter/material.dart';
import '../../../../../Core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            fontSize: 20,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            str: '19.99€',
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomButton(
            fontSize: 15,
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            str: 'Free Preview',
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ))
        ],
      ),
    );
  }
}
