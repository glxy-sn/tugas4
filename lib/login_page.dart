import 'package:flutter/material.dart';
import 'package:tugas4/homepage.dart';

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
          hintText: 'Username',
          labelText: 'Username',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: (id) ? Colors.green : Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Colors.blue
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
          hintText: 'Password',
          labelText: 'Password',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: (pw) ? Colors.green : Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Colors.blue
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
              primary: (isLoginSuccess) ? Colors.green : Colors.red
          ),
          onPressed: (){
            String text = "";
            if (username == "123200052" && password == "tiara") {
              //text = "Login Sukses Brooowww!";
              setState(() {
                isLoginSuccess = true;
                text = "Login Sukses!";
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              });
            }else if (username != "123200052"){
              if (password == "tiara"){
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

            }else if (password != "tiara"){
              setState(() {
                isLoginSuccess = false;
                text = "Password Salah";
                id = true;
                pw = false;
              });
              //text = "Username atau Password Salah";
            }else if (username != "123200052" && password != "tiara"){
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
