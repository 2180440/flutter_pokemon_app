//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyAuthPage(),
    );
  }
}

class MyAuthPage extends StatefulWidget {
  @override
  _MyAuthPageState createState() => _MyAuthPageState();
}

class _MyAuthPageState extends State<MyAuthPage> {
  // 入力されたメールアドレス
  String newUserEmail = "";
  // 入力されたパスワード
  String newUserPassword = "";

  // 登録・ログインに関する情報を表示
  String infoText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("ぽけぽけぽけぽけ"),
      ),
    );
  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Container(
//          padding: EdgeInsets.all(32),
//          child: Column(
//            children: <Widget>[
//              TextFormField(
//                // テキスト入力のラベルを設定
//                decoration: InputDecoration(labelText: "メールアドレス"),
//                onChanged: (String value) {
//                  setState(() {
//                    newUserEmail = value;
//                  });
//                },
//              ),
//              TextFormField(
//                decoration: InputDecoration(labelText: "パスワード（６文字以上）"),
//                // パスワードが見えないようにする
//                obscureText: true,
//                onChanged: (String value) {
//                  setState(() {
//                    newUserPassword = value;
//                  });
//                },
//              ),
//              RaisedButton(
//                onPressed: () async {
//                  try {
//                    // メール/パスワードでユーザー登録
//                    final FirebaseAuth auth = FirebaseAuth.instance;
//                    final AuthResult result =
//                    await auth.createUserWithEmailAndPassword(
//                      email: newUserEmail,
//                      password: newUserPassword,
//                    );
//
//                    // 登録したユーザー情報
//                    final FirebaseUser user = result.user;
//                    setState(() {
//                      infoText = "登録OK：${user.email}";
//                    });
//                  } catch (e) {
//                    // 登録に失敗した場合
//                    setState(() {
//                      infoText = "登録NG：${e.message}";
//                    });
//                  }
//                },
//                child: Text("ユーザー登録"),
//              ),
//              Text(infoText)
//            ],
//          ),
//        ),
//      ),
//    );
//  }
}