// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:livraria/global.dart';

class SideMenu extends StatelessWidget {
  SideMenu({super.key});

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: setWidth(4),
        vertical: setHeight(4),
      ),
      decoration: BoxDecoration(
        color: Global.themeColors.beige,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Icon(
        Icons.menu_rounded,
        color: Global.themeColors.gray1,
        size: setWidth(42),
      ),
    );
  }
}
