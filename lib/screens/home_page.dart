import 'package:flutter/material.dart';
import 'package:livraria/global.dart';
import 'package:livraria/widgets/add_edit_book.dart';
import 'package:livraria/widgets/book_list.dart';
import 'package:livraria/widgets/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Global.themeColors.gray1,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: setHeight(66),
                                left: setWidth(16),
                                right: setWidth(16),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: setWidth(0),
                                vertical: setHeight(16),
                              ),
                              // color: Colors.pink,
                              child: Stack(
                                children: [
                                  if (Global.showBookList) BookList(),
                                  if (Global.showLogin) Login(),
                                  if (Global.showNewBook) AddEditBook(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
