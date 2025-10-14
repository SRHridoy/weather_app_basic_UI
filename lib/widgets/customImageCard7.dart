import 'package:flutter/material.dart';

class Customimagecard7 extends StatelessWidget {
  final String path;
  final Widget child;
  const Customimagecard7({super.key, required this.path, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    const baseW = 428.0;
    const baseH = 926.0;
    final factorW = size.width / baseW;
    final factorH = size.height / baseH;
    return Container(
      height: 172 * factorH,
      width: 82 * factorW,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        path,
      ))),
      child: child,
    );
  }
}
