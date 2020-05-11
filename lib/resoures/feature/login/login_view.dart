import 'package:flutter/material.dart';
import 'package:voucherapp/resoures/feature/home/home_view.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/logo.jpg"),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 6),
                child: Text(
                  "Chào mừng bạn!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Text(
                "Đăng nhập với tài khoản của bạn",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Tên Đăng Nhập",

                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey,width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Mật khẩu",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey,width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints.loose(Size(double.infinity,30)),
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    "Quên mật khẩu",
                    style: TextStyle(fontSize: 16,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage()
                      ));
                    },
                    child: Text("Đăng nhập",
                      style: TextStyle(fontSize: 18,color: Colors.white),),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                      text: "Chưa có tài khoản?",
                      style: TextStyle(color: Colors.black,fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Tạo tài khoản mới",
                            style: TextStyle(
                                color: Colors.blue,fontSize: 16
                            )
                        )
                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}