import 'package:flutter/material.dart';
import 'package:sample/core/colors.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DefaultTabController(
        length: 3,
        child: Row(
          children: [
            // SizedBox(
            //   width: size.width / 1.6,
            //   height: size.height * .05,
            //   child: const TabBar(
            //     unselectedLabelColor: kGrey,
            //     indicatorColor: kPink,
            //     indicatorSize: TabBarIndicatorSize.label,
            //     labelColor: Colors.black,
            //     labelStyle: TextStyle(
            //       fontSize: 15,
            //       fontWeight: FontWeight.bold,
            //     ),
            //     unselectedLabelStyle: TextStyle(
            //       fontSize: 10,
            //       fontWeight: FontWeight.normal,
            //     ),
            //     tabs: [
            //       Tab(
            //         text: 'Games',
            //       ),
            //       Tab(
            //         text: 'Favorites',
            //       ),
            //       Tab(
            //         text: 'Last Played',
            //       )
            //     ],
            //   ),
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Games',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  width: 40,
                  height: 2,
                  color: kPink,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                'Favorites',
                style: TextStyle(
                  color: kGrey,
                ),
              ),
            ),
            const Text(
              'Last Played',
              style: TextStyle(
                color: kGrey,
              ),
            ),
            const Spacer(),
            const FollowingButton(),
          ],
        ),
      ),
    );
  }
}

class FollowingButton extends StatelessWidget {
  const FollowingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          minimumSize: const Size(60, 45)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text('Following'),
      ),
    );
  }
}
