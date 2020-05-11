import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }


  Widget NoNetworkConnected = Center(
    child: Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Center(
        child: Text(
          "Lỗi kết nối mạng",
          textScaleFactor: 2.0,
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );

  List<Widget> containers = [
    Container(
      child: ListView.separated(
        padding: const EdgeInsets.all(30),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                showDialog(context: context,builder: (context) => CustomDialog(
                  name: "Giảm giá 40%",
                  voucher: "Code: XAV360",
                  descripsion: "Chỉ áp dụng cho đơn hàng đầu tiên thanh toán tiền mặt, áp dụng với khách hàng mới của GrabFood",
                ));
              },
              child: Container(
                height: 200,
                child: Row(
                  children: [
                    Image(
                      height: 100,
                      image: AssetImage('assets/vouchergrab.jpg'),
                    ),
                    SizedBox(width: 20,),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Giảm 40%',style: TextStyle(
                              color: Colors.red,
                              fontSize: 30
                          ),
                          ),
                          SizedBox(height: 20,),
                          Text('Mã giảm giá: ******',style: TextStyle(
                            color: Colors.black,
                          ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    ),
    Container(
      child: ListView.separated(
        padding: const EdgeInsets.all(30),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                showDialog(context: context,builder: (context) => CustomDialog(
                  name: "Giảm giá 40%",
                  voucher: "Code: XAV360",
                  descripsion: "Chỉ áp dụng cho đơn hàng đầu tiên thanh toán tiền mặt, áp dụng với khách hàng mới của GrabFood",
                ));
              },
              child: Container(
                height: 200,
                child: Row(
                  children: [
                    Image(
                      height: 100,
                      image: AssetImage('assets/vouchergrab.jpg'),
                    ),
                    SizedBox(width: 20,),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Giảm 40%',style: TextStyle(
                              color: Colors.red,
                              fontSize: 30
                          ),
                          ),
                          SizedBox(height: 20,),
                          Text('Mã giảm giá: ******',style: TextStyle(
                            color: Colors.black,
                          ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    ),
    Container(
      child: ListView.separated(
        padding: const EdgeInsets.all(30),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                showDialog(context: context,builder: (context) => CustomDialog(
                  name: "Giảm giá 40%",
                  voucher: "Code: XAV360",
                  descripsion: "Chỉ áp dụng cho đơn hàng đầu tiên thanh toán tiền mặt, áp dụng với khách hàng mới của GrabFood",
                ));
              },
              child: Container(
                height: 200,
                child: Row(
                  children: [
                    Image(
                      height: 100,
                      image: AssetImage('assets/vouchergrab.jpg'),
                    ),
                    SizedBox(width: 20,),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Giảm 40%',style: TextStyle(
                              color: Colors.red,
                              fontSize: 30
                          ),
                          ),
                          SizedBox(height: 20,),
                          Text('Mã giảm giá: ******',style: TextStyle(
                            color: Colors.black,
                          ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,

                      colors: <Color>[
                        Color(0xFFBF2E2E),
                        Color(0xFFCE5E5E)
                      ])
              ),
            ),
            title: Text('Voucher'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Snackbar',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      // return object of type Dialog
                      return AlertDialog(
                        title: new Text("Chứng năng demo"),
                        content: new Text("Tính năng sẽ được cập nhật sớm nhất",
                          style: TextStyle(color: Colors.red),),
                        actions: <Widget>[
                          // usually buttons at the bottom of the dialog
                          new FlatButton(
                            child: new Text("Close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                    text: 'Food'
                ),
                Tab(
                    text: 'Car'
                ),
                Tab(
                    text: 'Bike'
                )
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/avt.jpg'),
                              )
                          )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Nguyễn Tiến Anh",style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,

                          colors: <Color>[
                            Color(0xFFBF2E2E),
                            Color(0xFFCE5E5E)
                          ])
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    new Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/grab.png'),
                            )
                        )),
                    OutlineButton(
                      color: Colors.white,
                      borderSide: BorderSide(color: Colors.white),
                      child: Text("Grab",style: TextStyle(color: Color.fromRGBO(0, 60, 141, 1)),),
                      onPressed: (){

                      },
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    new Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/goviet.png'),
                            )
                        )),
                    OutlineButton(
                      color: Colors.white,
                      borderSide: BorderSide(color: Colors.white),
                      child: Text("Goviet",style: TextStyle(color: Color.fromRGBO(0, 60, 141, 1)),),
                      onPressed: (){
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: containers,
          )
      ),
    );
  }
}

class CustomDialog extends StatelessWidget{
  final String voucher,descripsion,buttontext,name;
  final Image image;

  CustomDialog({this.voucher,this.descripsion,this.buttontext, this.image,this.name});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
  dialogContent(BuildContext context){
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
              top: 100,
              bottom: 16,
              left: 16,
              right: 16
          ),
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0,
                    offset: Offset(0.0,10.0)
                )
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(height: 25,),
              Text(
                descripsion,
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(height: 25,),
              Text(
                voucher,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 25,),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text('Close'),
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: 0,
            left: 20,
            right: 20,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/grab.png'),
              radius: 50,
            )
        )
      ],
    );
  }
}
