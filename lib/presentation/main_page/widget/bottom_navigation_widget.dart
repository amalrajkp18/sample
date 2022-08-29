import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:sample/core/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return DotNavigationBar(
          currentIndex: newIndex,
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          selectedItemColor: kPink,
          unselectedItemColor: kGrey,
          dotIndicatorColor: Colors.transparent,
          itemPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          marginR: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          enablePaddingAnimation: false,
          boxShadow: [
            BoxShadow(
              color: kGrey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 0),
            ),
          ],
          items: [
            DotNavigationBarItem(
              icon: const Icon(
                Icons.home_outlined,
              ),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.person_outline),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.sports_esports_outlined),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.settings_outlined),
            ),
          ],
        );
      },
    );
  }
}
