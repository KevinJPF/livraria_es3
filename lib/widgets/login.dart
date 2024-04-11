import 'package:flutter/material.dart';
import 'package:livraria/global.dart';
import 'package:livraria/widgets/general_widgets.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: setWidth(MediaQuery.of(context).size.width * 0.7),
          height: setHeight(250),
          alignment: Alignment.center,
          // color: Colors.pink,
          child: Column(
            children: [
              TopBar(titleText: 'ENTRAR'),
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
                    color: Global.themeColors.gray1,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: setWidth(16),
                      vertical: setHeight(16),
                    ),
                    child: Column(
                      children: [
                        InputBox(labelText: 'Nome'),
                        SizedBox(height: setHeight(16)),
                        InputBox(
                          labelText: 'Senha',
                          hideText: true,
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SimpleButton(
                              buttonText: 'CANCELAR',
                              cancelButton: true,
                            ),
                            SizedBox(width: setWidth(8)),
                            SimpleButton(buttonText: 'CONECTAR'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
