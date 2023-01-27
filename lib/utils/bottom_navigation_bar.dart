import 'package:flutter/material.dart';
import 'package:jobfinder/utils/custom_icons_icons.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final dynamic onTap;

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      elevation: 17.0,
      onTap: widget.onTap,
      fixedColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(CustomIcons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(CustomIcons.search), label: ""),
        BottomNavigationBarItem(icon: Icon(CustomIcons.calendar), label: ""),
        BottomNavigationBarItem(icon: Icon(CustomIcons.profile), label: ""),
      ],
    );
  }
}
