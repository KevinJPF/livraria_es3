import 'package:flutter/material.dart';
import 'package:livraria/global.dart';
import 'package:livraria/widgets/custom_texts.dart';

class TopBar extends StatelessWidget {
  final String titleText;
  const TopBar({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
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
          top: BorderSide(
            color: Global.themeColors.beige,
            width: 1,
          ),
          // bottom: BorderSide(
          //   color: Global.themeColors.beige,
          //   width: 1,
          // ),
        ),
        color: Global.themeColors.gray2,
      ),
      height: setHeight(50),
      width: double.infinity,
      child: Center(
        child: HighlightText(titleText),
      ),
    );
  }
}

class InputBox extends StatelessWidget {
  final String labelText;
  final bool hideText;
  final int maxLines;
  const InputBox({
    super.key,
    required this.labelText,
    this.hideText = false,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Global.themeColors.beige,
        fontSize: setFontSize(18),
        fontFamily: 'Jost',
        fontWeight: FontWeight.w600,
      ),
      obscureText: hideText,
      cursorColor: Global.themeColors.beige,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: setWidth(8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Global.themeColors.beige,
          ),
        ),
        label: SimpleText(labelText),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: BorderSide(
            color: Global.themeColors.beige24,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: BorderSide(
            color: Global.themeColors.beige,
          ),
        ),
      ),
    );
  }
}

class SimpleButton extends StatelessWidget {
  final String buttonText;
  final bool cancelButton;

  const SimpleButton({
    super.key,
    required this.buttonText,
    this.cancelButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) =>
            cancelButton ? Global.themeColors.gray2 : Global.themeColors.beige),
      ),
      child: SimpleText(
        buttonText,
        fontColor:
            cancelButton ? Global.themeColors.beige : Global.themeColors.gray1,
      ),
    );
  }
}
