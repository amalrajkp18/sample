import 'package:flutter/material.dart';
import 'package:sample/core/colors.dart';
import 'package:sample/presentation/users/widget/grid_tile.dart';
import 'package:sample/presentation/users/widget/menu_button.dart';
import 'package:sample/presentation/users/widget/profile_picture_widget.dart';
import 'package:sample/presentation/users/widget/tab_bar_widget.dart';

import 'widget/progress_bar_widget.dart';

class ScreenUsers extends StatelessWidget {
  const ScreenUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://img.freepik.com/free-photo/close-up-friends-with-ice-cream_23-2149066129.jpg?t=st=1661655020~exp=1661655620~hmac=ed4795256a7a009f653ec233644680644e8d842b0a97ad16fe5a3bf2c34d4755')),
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: size.height,
                )
              ],
            ),
            Positioned(
              top: size.height * 0.25,
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Lorenzo Merlino',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Playstation 4 Pro',
                        style: TextStyle(color: kGrey),
                      ),
                      ProgressBarWidget(size: size),
                      TabBarWidget(
                        size: size,
                      ),
                      const Expanded(
                        child: GameListTile(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ProfilePictureWidget(size: size),
            const MenuButton()
          ],
        ),
      ),
    );
  }
}
