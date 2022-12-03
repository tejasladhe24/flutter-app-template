import 'package:flutter/material.dart';
import 'package:flutter_template/logic/bottom_nav/bloc.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIdx;
  final BottomNavBloc bottomNavBloc;
  const BottomNavBar(
      {super.key, required this.bottomNavBloc, required this.currentIdx});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        bottomNavBloc.add(BottomNavEvent(screenIdx: index));
      },
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
            label: "Screen1", icon: Icon(Icons.one_k)),
        const BottomNavigationBarItem(
            label: "Screen2", icon: Icon(Icons.two_k)),
        const BottomNavigationBarItem(
            label: "Screen3", icon: Icon(Icons.three_k)),
        const BottomNavigationBarItem(
            label: "Screen4", icon: Icon(Icons.four_k)),
        const BottomNavigationBarItem(
            label: "Screen5", icon: Icon(Icons.five_k)),
      ],
      currentIndex: currentIdx,
    );
  }
}
