import 'package:flutter/cupertino.dart';

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _HomePageState();
}

class _HomePageState extends State<WritePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      color: CupertinoColors.systemRed,
    ));
  }
}