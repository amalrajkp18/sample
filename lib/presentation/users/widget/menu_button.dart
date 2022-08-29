import 'package:flutter/material.dart';
import 'package:sample/core/colors.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: kPink,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.menu,
          color: kWhite,
          size: 40,
        ),
      ),
    );
  }
}
