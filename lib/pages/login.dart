import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MyWidget();
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  //手机号的控制器
  TextEditingController phoneController = TextEditingController();

  //密码的控制器
  TextEditingController passController = TextEditingController();
  void _login(){
    print({'phone': phoneController.text, 'password': passController.text});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录',style: TextStyle(color: Color.fromARGB(255, 102, 102, 102)),),
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
                    child: Text('用户名',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 102, 102, 102,)
                        )
                    ),
                  ),
                  new TextField(
                    textInputAction: TextInputAction.next,
                    autofocus: true,
                    controller: phoneController,
                    decoration: new InputDecoration(
                      hintText: '请输入账号',
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
                    child: Text('密码',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 102, 102, 102,)
                        )
                    ),
                  ),
                  new TextField(
                    textInputAction: TextInputAction.go,
                    controller: passController,
                    decoration: new InputDecoration(
                        hintText: '请输入密码',
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                    ),
                    obscureText: true,
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                    onPressed: _login,
                    color: Colors.red,
                    child: Text('登录',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text('注册新会员',style: TextStyle(color: Color.fromARGB(255, 51, 51, 51)),textAlign: TextAlign.center,),
              )
            ],
          ),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }
}

