import 'package:flutter/material.dart';
import 'package:news_client/common/utils/utils.dart';
import 'package:news_client/common/values/colors.dart';
import 'package:news_client/common/values/shadows.dart';
import 'package:news_client/common/values/values.dart';
import 'package:news_client/pages/sign_in/button_widget.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //手机号的控制器
  final TextEditingController emailController = TextEditingController();
  //密码的控制器
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            _buildLogo(),
            _buildInputForm(),
            Spacer(),
            _buildThirdPartyLogin(),
            _buildSignupButton()
          ],
        ),
      ),
    );
  }

  // 注册按钮
  Widget _buildSignupButton() {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: FlatButton(
        onPressed: () => {},
        color: AppColors.secondaryElement,
        shape: RoundedRectangleBorder(
          borderRadius: Radii.k6pxRadius,
        ),
        child: Text(
          "Sign up",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
            fontSize: duSetFontSize(16),
            height: 1,
          ),
        ),
      ),
    );
  }

  Widget _buildThirdPartyLogin() {
    return Container(
      width: duSetWidth(295),
      margin: EdgeInsets.only(bottom: duSetHeight(40)),
      child: Column(
        children: <Widget>[
          Text(
            "Or sign in with social networks",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: duSetFontSize(16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: duSetHeight(20)),
            child: Row(
              children: <Widget>[
                btnThirdSocialWidget('twitter'),
                Spacer(),
                btnThirdSocialWidget('google'),
                Spacer(),
                btnThirdSocialWidget('facebook'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInputForm() {
    return Container(
      width: duSetWidth(295),
      margin: EdgeInsets.only(top: duSetWidth(49)),
      child: Column(
        children: [
          Container(
            height: duSetHeight(44),
            decoration: BoxDecoration(
                color: AppColors.secondaryElement,
                borderRadius: Radii.k6pxRadius),
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Email",
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 9),
                  border: InputBorder.none),
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w400,
                  fontSize: duSetFontSize(18)),
              maxLines: 1,
              autocorrect: false,
            ),
          ),
          Container(
              height: duSetHeight(44),
              margin: EdgeInsets.only(top: duSetHeight(15)),
              decoration: BoxDecoration(
                  color: AppColors.secondaryElement,
                  borderRadius: Radii.k6pxRadius),
              child: TextField(
                controller: passController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Password",
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 9),
                    border: InputBorder.none),
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w400,
                    fontSize: duSetFontSize(18)),
                maxLines: 1,
                autocorrect: false,
                obscureText: true,
              )),
          Container(
            height: duSetHeight(44),
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Row(
              children: [
                Container(
                  width: duSetWidth(140),
                  height: duSetHeight(44),
                  child: FlatButton(
                    onPressed: () {},
                    color: AppColors.thirdElement,
                    shape:
                        RoundedRectangleBorder(borderRadius: Radii.k6pxRadius),
                    child: Text(
                      "Sign up",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primaryElementText,
                          fontWeight: FontWeight.w400,
                          fontSize: duSetFontSize(18),
                          height: 1),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: duSetWidth(140),
                  height: duSetHeight(44),
                  child: FlatButton(
                    onPressed: () {},
                    color: AppColors.primaryElement,
                    shape:
                        RoundedRectangleBorder(borderRadius: Radii.k6pxRadius),
                    child: Text(
                      "Sign in",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primaryElementText,
                          fontWeight: FontWeight.w400,
                          fontSize: duSetFontSize(18),
                          height: 1),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: duSetHeight(22),
            margin: EdgeInsets.only(top: duSetHeight(20)),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Fogot password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.secondaryElementText,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w400,
                  fontSize: duSetFontSize(16),
                  height: 1, // 设置下行高，否则字体下沉
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      width: duSetWidth(110),
      margin: EdgeInsets.only(top: duSetHeight(40 + 44.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: duSetWidth(76),
            width: duSetWidth(76),
            margin: EdgeInsets.symmetric(horizontal: duSetWidth(15)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  child: Container(
                    height: duSetHeight(76),
                    decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        boxShadow: [Shadows.primaryShadow],
                        borderRadius: BorderRadius.all(
                            Radius.circular(duSetWidth(76 * 0.5)))),
                    child: Container(),
                  ),
                ),
                Positioned(
                  top: duSetWidth(13),
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.none,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Text(
              "SECTOR",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                fontSize: duSetFontSize(24),
                height: 1,
              ),
            ),
          ),
          Text(
            "news",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: duSetFontSize(16),
              height: 1,
            ),
          )
        ],
      ),
    );
  }
}
