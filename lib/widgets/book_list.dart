import 'package:flutter/material.dart';
import 'package:livraria/global.dart';
import 'package:livraria/widgets/custom_texts.dart';
import 'package:livraria/widgets/general_widgets.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopBar(titleText: 'Livros'),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              border: Border(
                right: BorderSide(
                  color: Global.themeColors.beige,
                  width: 1,
                ),
                left: BorderSide(
                  color: Global.themeColors.beige,
                  width: 1,
                ),
                // top: BorderSide(
                //   color: Global.themeColors.beige,
                //   width: 1,
                // ),
                bottom: BorderSide(
                  color: Global.themeColors.beige,
                  width: 1,
                ),
              ),
              color: Global.themeColors.gray2,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: setWidth(16)),
                  height: setHeight(50),
                  color: Global.themeColors.gray1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          // color: Colors.pink,
                          child: SimpleText('COD'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          // color: Colors.purple,
                          child: SimpleText('TÍTULO'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          // color: Colors.pink,
                          child: SimpleText('CATEGORIA'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          // color: Colors.purple,
                          child: SimpleText('ATIVO'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          // color: Colors.pink,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return BookListItem(
                          backgroundColor: index.isEven
                              ? Global.themeColors.beige12
                              : Global.themeColors.beige24,
                          isActive: index.isEven,
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BookListItem extends StatelessWidget {
  final Color backgroundColor;
  final bool isActive;
  const BookListItem(
      {super.key, required this.backgroundColor, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: setWidth(16)),
      height: setHeight(50),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              // color: Colors.pink,
              child: SimpleText('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              // color: Colors.purple,
              child: SimpleText('O Pequeno Príncipe'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              // color: Colors.pink,
              child: SimpleText('Aventura'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              // color: Colors.purple,
              child: Checkbox(
                  value: isActive,
                  onChanged: null,
                  activeColor: Global.themeColors.beige),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              // color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Global.themeColors.beige,
                      ),
                    ),
                    onPressed: null,
                    icon: Icon(
                      Icons.edit_square,
                      color: Global.themeColors.gray1,
                      size: setHeight(16),
                    ),
                  ),
                  IconButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Global.themeColors.gray1,
                      ),
                    ),
                    onPressed: null,
                    icon: Icon(
                      isActive ? Icons.block : Icons.check_circle,
                      color: Global.themeColors.beige,
                      size: setHeight(16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
