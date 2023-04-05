import 'package:flutter/material.dart';
import 'package:tugas4/bantuan.dart';
import 'package:tugas4/homepage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Bantuan()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Kelompok 4'),
          ),
          body: Center(
              child: _widgetOptions.elementAt(_selectedIndex)
            //IndexedStack(index: _selectedIndex)
          ),
            bottomNavigationBar: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_rounded),
                    label: 'Menu',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.help_rounded),
                      label: 'Bantuan'
                  ),
                  // BottomNavigationBarItem(
                  //     icon: Icon(Icons.logout),
                  //     label: 'Logout',
                  // ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.indigo,
                onTap: _onItemTapped
            ),
        )
    );
  }
}
