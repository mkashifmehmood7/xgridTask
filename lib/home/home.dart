import 'package:flutter/material.dart';
import 'package:xgrid/home/tile_button.dart';
import '../utils/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StatefulBuilder(
                builder: (context, setState) {
                  return Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: IconButton(
                      onPressed: () {
                        Utils.themeManager.toggleTheme(
                          !(Utils.themeManager.themeMode == ThemeMode.dark),
                        );
                        setState(() {});
                      },
                      icon: Icon(Utils.themeManager.themeMode == ThemeMode.dark
                          ? Icons.sunny
                          : Icons.nights_stay_outlined),
                    ),
                  );
                },
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 5,
                  ),
                ),
                padding: const EdgeInsets.all(30),
                child: const Icon(
                  Icons.person_outline_rounded,
                  size: 50,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Jon Doe",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 5),
              Text(
                "jon.doe@example.com",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  "Upgrade to pro",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              const SizedBox(height: 20),
              const TileButton(
                icon: Icons.shield_moon_outlined,
                title: 'Privacy',
              ),
              const TileButton(
                icon: Icons.history,
                title: 'Purchase History',
              ),
              const TileButton(
                icon: Icons.help_outline,
                title: 'Help & Support',
              ),
              const TileButton(
                icon: Icons.settings,
                title: 'Settings',
              ),
              const TileButton(
                icon: Icons.person_add_outlined,
                title: 'Invite a friend',
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    "Logout",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
