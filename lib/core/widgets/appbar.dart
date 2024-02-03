import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(
    {required String title,
    required GlobalKey<ScaffoldState> scaffoldKey,
    bool? locationImage}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(80),
    child: Container(
      height: 160,
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1),
              ),
              child: Material(
                elevation: 2,
                shadowColor: Colors.black,
                child: Image.asset(
                  'assets/images/logo2.png',
                  fit: BoxFit.cover,
                  height: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            locationImage != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/images/language-icon.png'),
                      const Text('London')
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 5),
                    child: IconButton(
                      onPressed: () {
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                      icon: const Icon(Icons.menu),
                      iconSize: 30,
                    ),
                  )
          ],
        ),
      ),
    ),
  );
}
