import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ytp/core/theme/color_constants.dart';
import 'package:ytp/features/presentation/pages/preloaded/widgets/logo_ytp.dart';
import 'package:ytp/router/router.dart';

@RoutePage()
class PreloadedPage extends StatefulWidget {
  const PreloadedPage({super.key});

  @override
  State<PreloadedPage> createState() => _PreloadedPageState();
}

class _PreloadedPageState extends State<PreloadedPage> {
  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  Future<void> _startAnimation() async {
    await Future.delayed(const Duration(seconds: 5), () {
      context.router.replace(const OnBoardingRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: ColorConstants.greenLayers,
        body: Center(
          child: LogoYTP(),
        ));
  }
}
