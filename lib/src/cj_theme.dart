import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CjAdapt {
  static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
  static double _width = mediaQuery.size.width;
  static double _height = mediaQuery.size.height;
  static double _topbarH = mediaQuery.padding.top;
  static double _botbarH = mediaQuery.padding.bottom;
  static double _pixelRatio = mediaQuery.devicePixelRatio;
  static double navBarHeight = 50;
  static double appBarHeight = 100;
  static double chatHeadWidth =screenW()/10 ;
  static double chatRedBagWidth =chatHeadWidth*6 ;
  static double chatItemWidth = chatHeadWidth*8-6;
  static double chatItemImageHeight=screenH()/3;
  static double chatItemImageWidth=screenW()/3;
  static double redBagHeadBoxHeightPSend=400;
  static double redBagHeadBoxHeight=screenW()*0.5;
  static double redBagHeadBoxR=screenW()/4;
  static double bodyHeight=screenH()-_topbarH -_botbarH -100;

  static var _ratio;
  static init(int number){
    int uiwidth = number is int ? number : 750;
    _ratio = _width / uiwidth;
  }
  static px(number){
    if(!(_ratio is double || _ratio is int)){CjAdapt.init(750);}
    return number * _ratio;
  }
  static onepx(){
    return 1/_pixelRatio;
  }
  static screenW(){
    return _width;
  }
  static screenH(){
    return _height;
  }
  static padTopH(){
    return _topbarH;
  }
  static padBotH(){
    return _botbarH;
  }
}
