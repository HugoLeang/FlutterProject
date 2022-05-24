import 'package:flutter/material.dart';

class PopCatComponent extends StatefulWidget {
  const PopCatComponent({Key? key}) : super(key: key);

  @override
  State<PopCatComponent> createState() => _PopCatState();
}

class _PopCatState extends State<PopCatComponent> {
  bool state = false;
  String popCatAssetPath = "assets/pop_cat_close.png";

  String _getPopCatAsset(bool newState) {
    if (newState) {
      return "assets/pop_cat_open.png";
    }
    return "assets/pop_cat_close.png";
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(popCatAssetPath),
      Switch(
          value: state,
          onChanged: (newValue) => {
                setState(() => {
                      state = newValue,
                      popCatAssetPath = _getPopCatAsset(newValue)
                    })
              })
    ]);
  }
}
