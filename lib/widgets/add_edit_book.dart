import 'package:flutter/material.dart';
import 'package:livraria/global.dart';
import 'package:livraria/widgets/general_widgets.dart';

class AddEditBook extends StatelessWidget {
  const AddEditBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: setWidth(MediaQuery.of(context).size.width * 0.85),
          height: setHeight(500),
          alignment: Alignment.center,
          // color: Colors.pink,
          child: Column(
            children: [
              TopBar(titleText: 'CADASTRAR'),
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
                        Row(
                          children: [
                            Expanded(
                              child: InputBox(labelText: 'Código'),
                            ),
                            SizedBox(width: setWidth(8)),
                            Expanded(
                              flex: 3,
                              child: InputBox(labelText: 'Título'),
                            ),
                            SizedBox(width: setWidth(8)),
                            Expanded(
                              flex: 3,
                              child: InputBox(labelText: 'Categoria'),
                            ),
                          ],
                        ),
                        SizedBox(height: setHeight(16)),
                        Row(
                          children: [
                            Expanded(
                              child: InputBox(labelText: 'Edição'),
                            ),
                            SizedBox(width: setWidth(8)),
                            Expanded(
                              child: InputBox(labelText: 'ISBN'),
                            ),
                            SizedBox(width: setWidth(8)),
                            Expanded(
                              child: InputBox(labelText: 'Nº de Páginas'),
                            ),
                            SizedBox(width: setWidth(8)),
                            Expanded(
                              child: InputBox(labelText: 'Ano'),
                            ),
                            SizedBox(width: setWidth(8)),
                            Expanded(
                              flex: 2,
                              child: InputBox(labelText: 'Dimensões'),
                            ),
                          ],
                        ),
                        SizedBox(height: setHeight(16)),
                        Row(
                          children: [
                            Expanded(
                              child: InputBox(labelText: 'Valor de Aquisição'),
                            ),
                            SizedBox(width: setWidth(8)),
                            Expanded(
                              child: InputBox(labelText: 'Cód. de Barras'),
                            ),
                          ],
                        ),
                        SizedBox(height: setHeight(16)),
                        Expanded(
                          child: InputBox(
                            labelText: 'Sinopse',
                            maxLines: 7,
                          ),
                        ),
                        SizedBox(height: setHeight(16)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SimpleButton(
                              buttonText: 'CANCELAR',
                              cancelButton: true,
                            ),
                            SizedBox(width: setWidth(8)),
                            SimpleButton(buttonText: 'CADASTRAR'),
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
