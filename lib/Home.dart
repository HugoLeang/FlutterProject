import 'package:flutter/widgets.dart';
import 'package:flutter_app/popCatComponent.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [PopCatComponent(), PopCatComponent()]));
  }
}
