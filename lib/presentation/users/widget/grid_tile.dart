import 'package:flutter/material.dart';

class GameListTile extends StatelessWidget {
  const GameListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 8,
        childAspectRatio: 1 / 1.2,
        children: List.generate(
          6,
          (index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://img.freepik.com/premium-vector/illustration-young-boy-pretending-be-happy_650525-12.jpg?4&w=740')),
              ),
            );
          },
        ),
      ),
    );
  }
}
