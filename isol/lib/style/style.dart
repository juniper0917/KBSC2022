import 'package:flutter/material.dart';

InputDecoration getInputDeco(String hintText) {
  return InputDecoration (
    filled: true,
    fillColor: const Color(0xfffcfdfd),
    contentPadding: const EdgeInsets.symmetric(horizontal: 23.0),
    hintText: hintText,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffe2eef0), width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(5))
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff053dc2), width: 1.2),
      borderRadius: BorderRadius.all(Radius.circular(5))
    ),
  );
}

// 텍스트 필드 내부 스타일
TextStyle getTextFieldFontStyle() {
  return const TextStyle(
    fontSize: 14.0,
    letterSpacing: -0.26,
  );
}

TextStyle getLoginTextStyle(){
  return const TextStyle(
      color:  Color(0xff222222),
      fontWeight: FontWeight.w500,
      fontFamily: "NotoSansKR",
      fontStyle:  FontStyle.normal,
      fontSize: 16.0
  );
}

TextStyle getMyTextStyle(){
  return const TextStyle(
      color:  Color(0xff222222),
      fontWeight: FontWeight.w600,
      fontFamily: "NotoSansKR",
      fontStyle:  FontStyle.normal,
      fontSize: 16.0
  );
}

// 버튼 스타일
ButtonStyle supprotusButtonStyle(Color color){
  return  ElevatedButton.styleFrom(
      primary: color,
      shadowColor: const Color(0xffe2eef0),
      padding: const EdgeInsets.all(14.0)
  );
}

ButtonStyle supprotusButtonStyleR10(Color color){
  return  ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      primary: color,
      shadowColor: const Color(0xffe2eef0),
      padding: const EdgeInsets.all(14.0)
  );
}

ButtonStyle paymentButtonStyle(Color color){
  return  ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0)
      ),
      primary: color,
      shadowColor: const Color(0xffe2eef0),
  );
}