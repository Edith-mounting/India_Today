// import 'package:flutter/cupertino.dart';

// class SizeConfig {
//   late double _screenWidth;
//   late double _screenHeight;
//   late double _blockSizeHorizontal = 0;
//   late double _blockSizeVertical = 0;

//   late double textMultiplier;
//   late double imageSizeMultiplier;
//   late double heightMultiplier;
//   late double widthMultiplier;
//   late bool isPortrait = true;
//   late bool isMobilePortrait = false;

//   void init(BoxConstraints constraints, Orientation orientation) {
//     if (orientation == Orientation.portrait) {
//       _screenWidth = constraints.maxWidth;
//       _screenHeight = constraints.maxHeight;
//       isPortrait = true;
//       if (_screenWidth < 450) {
//         isMobilePortrait = true;
//       }
//     } else {
//       _screenWidth = constraints.maxHeight;
//       _screenHeight = constraints.maxWidth;
//       isPortrait = false;
//       isMobilePortrait = false;
//     }

//     _blockSizeHorizontal = _screenWidth / 100;
//     _blockSizeVertical = _screenHeight / 100;

//     textMultiplier = _blockSizeVertical;
//     imageSizeMultiplier = _blockSizeHorizontal;
//     heightMultiplier = _blockSizeVertical;
//     widthMultiplier = _blockSizeHorizontal;

//   }

//   static setHeight(int value){
//     double oneW = (0.25*widthMultiplier).roundToDouble();

//     return (value*oneH).roundToDouble();
//   }

//   static setWidth(int value){
//     return (value*oneW).roundToDouble();
//   }

//   //making new UNIT

//   static double oneH = (0.12*heightMultiplier).roundToDouble();

// }