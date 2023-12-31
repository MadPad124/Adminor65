import 'package:adminor/loginPages/createAccountPage.dart';
import 'package:adminor/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool showLoading = false;

  void submitPhoneNumber(){

    setState(() {
      showLoading = true;
    });

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CreateAccountPage(),
        ));
    setState(() {
      showLoading = false;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        primary: false,
        shadowColor: Colors.green,
        automaticallyImplyLeading: false,
        elevation: 1,
        toolbarHeight: 0,
        actions: [],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            color: Colors.white,
            child: Center(
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset('assets/images/splash-bottom-page-image.png'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      'assets/images/splash-bottom-page-image-sun.png',
                      opacity: const AlwaysStoppedAnimation(.3),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 75,
                            padding: const EdgeInsets.all(13.0),
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 0.2,
                                    blurRadius: 1),
                              ],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                showLoading ? Container() : Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9]'))
                                      ],
                                      keyboardType: TextInputType.number,
                                      autofocus: true,
                                      onChanged: (text) {

                                        if(text.length >= 11){

                                          submitPhoneNumber();

                                        }

                                      },
                                      style: TextStyle(color: Colors.white,fontFamily: 'vazir'),
                                      cursorColor: Colors.black87,
                                      cursorWidth: 0,
                                      maxLength: 11,
                                      minLines: 1,
                                      decoration: const InputDecoration(
                                        fillColor: Colors.white,
                                        border: InputBorder.none,
                                        icon: Padding(
                                          padding: EdgeInsets.only(left: 5.0),
                                          child: Icon(
                                            Icons.phone_android
                                            ,
                                            color: Colors.white,
                                          ),
                                        ),
                                        labelText: "شماره موبایل",
                                        labelStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                        counterText: '',
                                      ),
                                    )),
                                Expanded(
                                  flex: 2,
                                  child: showLoading ? AnimatedSize(
                                    duration: Duration(seconds: 1),
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.all(6),
                                        animationDuration:
                                        Duration(milliseconds: 1),
                                        elevation: 2,
                                        splashFactory: InkSparkle.splashFactory,
                                        backgroundColor: Colors.white,
                                        primary: Colors.black87,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          showLoading = false;
                                        });
                                      },
                                      child: adminorLoadingText(90, 15, Colors.green),
                                    ),
                                  ) : TextButton(
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(6),
                                      animationDuration:
                                      Duration(milliseconds: 1),
                                      elevation: 2,
                                      splashFactory: InkSparkle.splashFactory,
                                      backgroundColor: Colors.white,
                                      primary: Colors.black87,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                      ),
                                    ),
                                    onPressed: submitPhoneNumber,
                                    child: showText('ورود', 16, Colors.green,FontWeight.normal),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
              ]),
            ),
          ),
        ),
      ),
    );
  }

}

class LoginCodePage extends StatefulWidget {
  const LoginCodePage({Key? key}) : super(key: key);

  @override
  State<LoginCodePage> createState() => _LoginCodePageState();
}

class _LoginCodePageState extends State<LoginCodePage> {

  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        primary: false,
        shadowColor: Colors.green,
        automaticallyImplyLeading: false,
        elevation: 1,
        toolbarHeight: 0,
        actions: [],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            color: Colors.white,
            child: Center(
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset('assets/images/splash-bottom-page-image.png'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      'assets/images/splash-bottom-page-image-sun.png',
                      opacity: const AlwaysStoppedAnimation(.3),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 75,
                            padding: const EdgeInsets.all(13.0),
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 0.2,
                                    blurRadius: 1),
                              ],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                showLoading ? Container() : Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9]'))
                                      ],
                                      keyboardType: TextInputType.number,
                                      autofocus: true,
                                      onChanged: (text) {},
                                      style: TextStyle(color: Colors.white,fontFamily: 'vazir'),
                                      cursorColor: Colors.black87,
                                      cursorWidth: 0,
                                      maxLength: 11,
                                      minLines: 1,
                                      decoration: const InputDecoration(
                                        fillColor: Colors.white,
                                        border: InputBorder.none,
                                        icon: Padding(
                                          padding: EdgeInsets.only(left: 5.0),
                                          child: Icon(
                                            Icons.phone_android
                                            ,
                                            color: Colors.white,
                                          ),
                                        ),
                                        labelText: "کد امنیتی ارسال شده",
                                        labelStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                        counterText: '',
                                      ),
                                    )),
                                Expanded(
                                  flex: 2,
                                  child: showLoading ? AnimatedSize(
                                    duration: Duration(seconds: 1),
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.all(6),
                                        animationDuration:
                                        Duration(milliseconds: 1),
                                        elevation: 2,
                                        splashFactory: InkSparkle.splashFactory,
                                        backgroundColor: Colors.white,
                                        primary: Colors.black87,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          showLoading = false;
                                        });
                                      },
                                      child: adminorLoadingText(90, 15, Colors.green),
                                    ),
                                  ) : TextButton(
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(6),
                                      animationDuration:
                                      Duration(milliseconds: 1),
                                      elevation: 2,
                                      splashFactory: InkSparkle.splashFactory,
                                      backgroundColor: Colors.white,
                                      primary: Colors.black87,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        showLoading = true;
                                      });
                                    },
                                    child: showText('تایید کد', 16, Colors.green,FontWeight.normal),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

