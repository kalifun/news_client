# Welcome

## yaml

``` yaml
name: news_client
description: A new Flutter project.

publish_to: 'none' # Remove this line if you wish to publish to pub.dev

version: 1.0.0+1

environment:
  sdk: ">=2.7.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter


  cupertino_icons: ^1.0.0
  flutter_screenutil: ^4.0.3+2

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true


  assets:
    - assets/images/


  fonts:
    - family: Avenir
      fonts:
        - asset: assets/fonts/Avenir-Book.ttf
          weight: 400
    - family: Montserrat
      fonts:
        - asset: assets/fonts/Montserrat-SemiBold.ttf
          weight: 600

```  

## 适配  

```
- lib
    - common
        - utils
            - screen.dart
            - utils.dart
        - values
            - colors.dart
            - values.dart

```

`screen.dart`

```dart
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
```

`utils.dart`  

```dart
library utils;

export 'screen.dart';
```  

`colors.dart`

```dart
import 'dart:ui';

class AppColors {
  // 主文本
  static const Color primaryText = Color.fromARGB(255, 45, 45, 47);

  // 主控件-背景
  static const Color primaryElement = Color.fromARGB(255, 41, 103, 255);

  // 主控件-文本
  static const Color primaryElementText = Color.fromARGB(255, 255, 255, 255);
}
```  

`values.dart`  

```dart
library values;

export 'colors.dart';

```  

## 开始页  

页头标题
```dart
  // 页头标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(65)),
      child: Text(
        "Feature",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: duSetFontSize(24)),
      ),
    );
  }
```  

页头说明
```dart
  Widget _buildPageHeaderDetail() {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14)),
      child: Text(
        "The best of news channels all in one place. Trusted sources and personalized news for you.",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: "Avenir",
            fontWeight: FontWeight.normal,
            fontSize: duSetFontSize(16),
            height: 1.3),
      ),
    );
  }
```  

特性说明
```dart
  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: duSetHeight(marginTop)),
      child: Row(
        children: [
          Container(
            width: duSetWidth(80),
            height: duSetHeight(80),
            child: Image.asset(
              "assets/images/$imageName.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: duSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.normal,
                  fontSize: duSetFontSize(16)),
            ),
          )
        ],
      ),
    );
  }
```  

开始按钮
```dart
  Widget _buildStartButton() {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: FlatButton(
        child: Text("Get Start"),
        color: AppColors.primaryElement,
        textColor: AppColors.primaryElementText,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(duSetWidth(6)))),
        onPressed: () {},
      ),
    );
  }
```  

开始页
```dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:news_client/common/utils/screen.dart';
import 'package:news_client/common/values/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 高度去掉 顶部，底部 导航
    ScreenUtil.init(
        BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        designSize: Size(375, 734),
        allowFontScaling: true);

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            _buildPageHeadTitle(),
            _buildPageHeaderDetail(),
            _buildFeatureItem(
              "feature-1",
              "Compelling photography and typography provide a beautiful reading",
              86,
            ),
            _buildFeatureItem(
              "feature-2",
              "Sector news never shares your personal data with advertisers or publishers",
              40,
            ),
            _buildFeatureItem(
              "feature-3",
              "You can get Premium to unlock hundreds of publications",
              40,
            ),
            Spacer(),
            _buildStartButton()
          ],
        ),
      ),
    );
  }
}
```  

![](images/welcome.png)