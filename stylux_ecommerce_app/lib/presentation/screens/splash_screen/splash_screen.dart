import 'package:flutter/material.dart';
import 'package:stylux_ecommerce_app/presentation/screens/login_screen/login_screen.dart';
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
        AnimationController(vsync: this, duration: const Duration(seconds: 7));
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInCirc);
    controller.forward().then((value) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const LoginScreen(),
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
      backgroundColor: AppColors.primary,
      body: Center(
        child: FadeTransition(
            opacity: animation, child: Image.asset("assets/images/Stylux.png")),
      ),
    );
  }
}
