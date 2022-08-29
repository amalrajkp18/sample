import 'package:flutter/material.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height / 6,
      right: 0,
      left: 0,
      child: const CircleAvatar(
        radius: 60,
        backgroundImage: NetworkImage(
            'https://img.freepik.com/premium-psd/double-color-exposure-photo-effect_95007-533.jpg?w=1060'),
      ),
    );
  }
}
