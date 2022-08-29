import 'package:flutter/material.dart';
import 'package:sample/presentation/games/screen_games.dart';
import 'package:sample/presentation/home/screen_home.dart';
import 'package:sample/presentation/settings/screen_settings.dart';
import 'package:sample/presentation/users/screen_users.dart';

import 'widget/bottom_navigation_widget.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    const ScreenHome(),
    const ScreenUsers(),
    const ScreenGames(),
    const ScreenSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
