import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.bubble_chart_outlined),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.account_circle_outlined),
        )
      ],
    );
  }
}
