import 'package:flutter/material.dart';
import 'package:livraria/global.dart';
import 'package:livraria/widgets/custom_texts.dart';
import 'package:livraria/widgets/side_menu.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: setHeight(8)),
            child: Stack(
              children: [
                Expanded(
                  child: Container(
                    color: Global.themeColors.gray1,
                    padding: EdgeInsets.symmetric(vertical: setHeight(8)),
                    child: Stack(
                      children: [
                        // Top Bar Title
                        Container(
                          height: setHeight(50),
                          alignment: Alignment.center,
                          // color: Colors.blue,
                          child: HighlightText(
                            'LIVRARIA KJ LIVROS',
                          ),
                        ),
                        // Theme Button
                        GestureDetector(
                          onTap: () {
                            Global.toggleTheme();
                            Global.updatePage.value = !Global.updatePage.value;
                          },
                          child: Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: setWidth(16)),
                            height: setHeight(50),
                            alignment: Alignment.centerRight,
                            // color: Colors.green,
                            child: Icon(
                              Global.isDarkTheme
                                  ? Icons.mode_night_sharp
                                  : Icons.light_mode_sharp,
                              color: Global.themeColors.beige,
                              size: setHeight(32),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Side Menu Button
                SideMenu(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
