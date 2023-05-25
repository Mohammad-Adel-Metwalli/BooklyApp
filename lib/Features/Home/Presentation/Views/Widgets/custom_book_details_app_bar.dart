import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget
{
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: ()
        {
          GoRouter.of(context).pop();
        }, icon: const Icon(Icons.close_sharp, size: 30)),

        const Spacer(),

        IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.cartShopping))
      ],
    );
  }
}
