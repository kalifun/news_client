import 'package:flutter_screenutil/screen_util.dart';

// 设置宽度
double duSetWidth(double width) {
  return ScreenUtil().setHeight(width);
}

// 设置高度
double duSetHeight(double height) {
  return ScreenUtil().setHeight(height);
}

// 设置字体宽度
double duSetFontSize(double fontSize) {
  return ScreenUtil().setSp(fontSize);
}
