import 'package:flutter/material.dart';
import 'package:sample/presentation/users/widget/text_widget.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: size.width,
        height: 80,
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Textwidget(count: '67', title: 'Games'),
            Textwidget(count: '12K', title: 'Followers'),
            Textwidget(count: '67', title: 'Following'),
          ],
        ),
      ),
    );
  }
}
