import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:bookly_app/Features/Presentation/Views/Widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget
{
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin
{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState()
  {
    super.initState();

    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome()
  {
    Future.delayed(const Duration(seconds: 4), ()
    {
      GoRouter.of(context).push('/homeView');
    });
  }

  void initSlidingAnimation()
  {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(begin: const Offset(0,20), end: Offset.zero).animate(animationController);

    animationController.forward();
  }

  @override
  void dispose()
  {
    // Dispose the controller
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(AssetsData.logo, height: 50,),

        const SizedBox(
          height: 4,
        ),

        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}
