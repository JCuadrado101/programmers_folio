import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:programmers_folio/widgets/buttons/drawer_nav.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                'assets/images/square.svg',
                height: 200,
              ),
              Column(
                children: const [
                  DrawerNav(
                    title: 'Home',
                    route: '/home',
                  ),
                  DrawerNav(
                    title: 'About',
                    route: '/about',
                  ),
                  DrawerNav(
                    title: 'Services',
                    route: '/service',
                  ),
                  DrawerNav(
                    title: 'Projects',
                    route: '/projects',
                  ),
                  // DrawerNav(title: 'Contact'),
                ],
              ),
              const Text('@2020 Programmers Folio'),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
