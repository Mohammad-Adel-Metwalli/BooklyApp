import 'package:flutter/cupertino.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget
{
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: const [
        CustomAppBar()
      ],
    );
  }
}
