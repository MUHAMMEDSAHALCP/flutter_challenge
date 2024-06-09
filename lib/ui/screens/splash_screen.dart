import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/foundation/extensions/text_style_extension.dart';
import 'package:flutter_challenge/routes/app_router.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
    _navigateToHome();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {
      context.router.replace(const ArticleListRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Text(
            'Articles',
            style: Theme.of(context).textTheme.labelLarge!.bold.s30.black,
          ),
        ),
      ),
    );
  }
}
