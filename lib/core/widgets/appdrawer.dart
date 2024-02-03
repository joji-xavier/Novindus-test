import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 200,
            child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 60,
                  ),
                )),
          ),
          DrawerMenuItem(
            icon: Icons.home,
            text: 'Home',
            onPressed: () {
              // GoRouter.of(context).go('/home');
            },
          ),
          DrawerMenuItem(
            icon: Icons.shopping_cart,
            text: 'Shop',
            onPressed: () {
              // GoRouter.of(context).go('/shop');
            },
          ),
          DrawerMenuItem(
            icon: Icons.restaurant,
            text: 'Recipes',
            onPressed: () {
              // GoRouter.of(context).go('/home/recipe');

              // Handle Recipes menu item click
            },
          ),
          DrawerMenuItem(
            icon: Icons.library_books,
            text: 'Newsletter & Videos',
            onPressed: () {
              // GoRouter.of(context).go('/home/news');
            },
          ),
          // DrawerMenuItem(
          //   icon: Icons.question_answer,
          //   text: 'FAQ',
          //   onPressed: () {
          //     // Handle FAQ menu item click
          //   },
          // ),
          DrawerMenuItem(
            icon: Icons.branding_watermark,
            text: 'Brand',
            onPressed: () {
              // GoRouter.of(context).go('/home/brand');
            },
          ),
          DrawerMenuItem(
            icon: Icons.contact_mail,
            text: 'Contact Us',
            onPressed: () {
              // GoRouter.of(context).go('/home/contact');
            },
          ),
        ],
      ),
    );
  }
}

class DrawerMenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const DrawerMenuItem({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () {
        onPressed();
        Navigator.of(context)
            .pop(); // Close the drawer after the item is clicked
      },
    );
  }
}
