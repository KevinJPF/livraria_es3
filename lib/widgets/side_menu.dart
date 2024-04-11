// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:livraria/global.dart';
import 'package:livraria/widgets/custom_texts.dart';

class SideMenu extends StatelessWidget {
  static ValueNotifier<bool> updateMenu = ValueNotifier(false);
  bool booksOpen = false;
  SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    if (Global.menuExpanded) {
      return ValueListenableBuilder(
          valueListenable: updateMenu,
          builder: (context, value, child) {
            return Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: setHeight(50)),
                  width: setWidth(300),
                  decoration: BoxDecoration(
                    color: Global.themeColors.gray2,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                    ),
                    border: Border(
                      right: BorderSide(
                        color: Global.themeColors.beige,
                      ),
                      bottom: BorderSide(
                        color: Global.themeColors.beige,
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(8)),
                    child: Column(
                      children: [
                        MenuItem(
                          itemName: 'Vendas',
                          onTap: () {},
                        ),
                        MenuItem(
                          itemName: 'Livros',
                          isOpen: booksOpen,
                          onTap: () {
                            booksOpen = !booksOpen;
                            updateMenu.value = !updateMenu.value;
                          },
                        ),
                        if (booksOpen) ...[
                          MenuItem(
                            itemName: 'Lista de Livros',
                            isSubMenu: true,
                            onTap: () {
                              Global.menuExpanded = false;
                              Global.showBookList = true;
                              Global.showNewBook = false;
                              Global.showLogin = false;
                              Global.updatePage.value =
                                  !Global.updatePage.value;
                            },
                          ),
                          MenuItem(
                            itemName: 'Cadastrar Livro',
                            isSubMenu: true,
                            onTap: () {
                              Global.menuExpanded = false;
                              Global.showBookList = false;
                              Global.showNewBook = true;
                              Global.showLogin = false;
                              Global.updatePage.value =
                                  !Global.updatePage.value;
                            },
                          ),
                        ],
                        MenuItem(
                          itemName: 'Estoque',
                          onTap: () {},
                        ),
                        MenuItem(
                          itemName: 'Histórico',
                          onTap: () {},
                        ),
                        Spacer(),
                        MenuItem(
                          itemName: 'Entrar',
                          isSubMenu: true,
                          isLastItem: true,
                          onTap: () {
                            Global.menuExpanded = false;
                            Global.showBookList = false;
                            Global.showNewBook = false;
                            Global.showLogin = true;
                            Global.updatePage.value = !Global.updatePage.value;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Global.menuExpanded = false;
                    Global.updatePage.value = !Global.updatePage.value;
                  },
                  child: Container(
                    width: setWidth(320),
                    height: setHeight(50),
                    padding: EdgeInsets.symmetric(
                      horizontal: setWidth(8),
                      vertical: setHeight(8),
                    ),
                    decoration: BoxDecoration(
                      color: Global.themeColors.beige,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: HighlightText('MENU',
                              fontColor: Global.themeColors.gray1),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.menu_open_rounded,
                            size: setHeight(32),
                            color: Global.themeColors.gray1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          });
    } else {
      return GestureDetector(
        onTap: () {
          Global.menuExpanded = true;
          Global.updatePage.value = !Global.updatePage.value;
        },
        child: Container(
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
        ),
      );
    }
  }
}

class MenuItem extends StatelessWidget {
  final String itemName;
  final bool isSubMenu;
  final bool isLastItem;
  final bool isOpen;
  final List<MenuItem>? subMenuItems;
  final VoidCallback onTap;

  const MenuItem({
    super.key,
    this.isSubMenu = false,
    this.isLastItem = false,
    this.isOpen = false,
    this.subMenuItems,
    required this.itemName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isOpen
              ? Global.themeColors.beige
              : isSubMenu
                  ? Global.themeColors.gray1
                  : Global.themeColors.gray2,
          border: Border(
            bottom: isLastItem
                ? BorderSide.none
                : BorderSide(
                    color: isOpen
                        ? Global.themeColors.gray2
                        : Global.themeColors.beige,
                    width: 1),
            top: isLastItem
                ? BorderSide(color: Global.themeColors.beige, width: 1)
                : BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: isSubMenu
              ? MainAxisAlignment.end
              : MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: setWidth(8)),
              child: SimpleText(itemName,
                  fontColor: isOpen
                      ? Global.themeColors.gray2
                      : Global.themeColors.beige),
            ),
            !isSubMenu
                ? Icon(
                    isOpen ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                    color: isOpen
                        ? Global.themeColors.gray2
                        : Global.themeColors.beige,
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
