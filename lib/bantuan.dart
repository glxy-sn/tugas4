import 'package:flutter/material.dart';
import 'package:tugas4/login_page.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:tugas4/penggunaan.dart';


class Bantuan extends StatefulWidget {

  const Bantuan({Key? key}) : super(key: key);

  @override
  State<Bantuan> createState() => _Bantuan();
}

class _Bantuan extends State<Bantuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpPage()),
                );
              },
              child: Text('Cara Penggunaan Aplikasi'),

            ),
            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: GestureDetector(
                onTap: () async {
                  Dialogs.materialDialog(
                      msg: 'Do you want to logout from the application ?',
                      title: "LOGOUT",
                      color: Colors.white,
                      context: context,
                      actions: [
                        IconsOutlineButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          text: 'Cancel',
                          iconData: Icons.cancel_outlined,
                          textStyle: TextStyle(color: Colors.grey),
                          iconColor: Colors.grey,
                        ),
                        IconsButton(
                          onPressed: () async {
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route route) => route == null);
                          },
                          text: 'Logout',
                          iconData: Icons.logout,
                          color: Colors.red,
                          textStyle: TextStyle(color: Colors.white),
                          iconColor: Colors.white,
                        ),
                      ]);
                },
                child: Text('Logout'),
              )
            ),
          ],
        ),
      ),
    );
  }
}
