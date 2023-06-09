import 'package:flutter/material.dart';
import 'package:tugas4/dashboard.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;
  bool id = true;
  bool pw = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: (isLoginSuccess) ? Colors.indigo : Colors.red,
            title: Text("Login Page"),
            automaticallyImplyLeading: false,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //_ artinya private
              _usernameField(),
              _passwordField(),
              _loginButton(),
            ],
          ),
        )
    );
  }
  Widget _usernameField(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

      child: TextFormField(
        onChanged: (value){
          username = value;
        },
        decoration: InputDecoration(
          labelText: 'Username',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: (id) ? Colors.indigo : Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Colors.indigo
            ),
          ),
        ),
      ),
    );
  }
  Widget _passwordField(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        onChanged: (value){
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: (pw) ? Colors.indigo : Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Colors.indigo
            ),
          ),
        ),
      ),
    );
  }
  Widget _loginButton(){
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        //width: MediaQueryData.of(context).size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: (isLoginSuccess) ? Colors.indigo : Colors.red
          ),
          onPressed: (){
            String text = "";
            if (username == "tugas4" && password == "kelompok4") {
              //text = "Login Sukses Brooowww!";
              setState(() {
                isLoginSuccess = true;
                text = "Login Sukses!";
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              });
            }else if (username != "tugas4"){
              if (password == "kelompok4"){
                setState(() {
                  isLoginSuccess = false;
                  text = "Username Salah";
                  id = false;
                  pw = true;
                });
              }else{
                setState(() {
                  isLoginSuccess = false;
                  text = "Username dan Password Salah";
                  id = false;
                  pw = false;
                });
              }

            }else if (password != "kelompok4"){
              setState(() {
                isLoginSuccess = false;
                text = "Password Salah";
                id = true;
                pw = false;
              });
              //text = "Username atau Password Salah";
            }else if (username != "tugas4" && password != "kelompok4"){
              setState(() {
                isLoginSuccess = false;
                text = "Password Salah";
              });
            }
            SnackBar snack = SnackBar(content: Text(text));
            ScaffoldMessenger.of(context).showSnackBar(snack);
          },
          child: Text("Login"),
        )
    );
  }
}
