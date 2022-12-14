import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutDebug extends StatefulWidget {
  final Widget child;

  const LayoutDebug({super.key, required this.child});

  @override
  State<LayoutDebug> createState() => _LayoutDebugState();
}

class _LayoutDebugState extends State<LayoutDebug> {
  final controller = PageController(
    viewportFraction: 0.8,
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    late num controllerValue;

    initState() {
      super.initState();
      controller.addListener(() {
        setState(() {
          controllerValue = controller.page!;
        });
      });
    }

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                pageSnapping: true,
                controller: controller,
                itemBuilder: (context, index) {
                  return widget.child;
                }),
          ),
          const SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }
}
