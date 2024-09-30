import 'package:flutter/material.dart';
import 'package:stylux_ecommerce_app/presentation/screens/option_screen/option_screen.dart';
import 'package:stylux_ecommerce_app/presentation/theme/color_scheme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInCirc);
    controller.forward().then((value) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const OptionScreen(),
      ));
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: FadeTransition(
            opacity: animation, child: Image.asset("assets/images/1.png")),
      ),
    );
  }
}
