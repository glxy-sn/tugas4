import 'package:flutter/material.dart';

class Member{
  String name='';
  String nim='';

  Member({required this.name, required this.nim});
}
final List<Member> members =[
  Member(name: 'Shafa Tiara Tsabita Himawan', nim: '123200052'),
  Member(name: 'Syafira Widiyanti', nim: '123200057'),
  Member(name: 'Audrey Rosa', nim: '123200172')
];
class Anggota extends StatelessWidget {
  const Anggota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Anggota'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: members.length,
          itemBuilder: (BuildContext context, int index){
            Member member = members[index];
            return GridTile(
                child: Image.asset('assets/images/member$index.jpg'),
                footer: GridTileBar(
                  backgroundColor: Colors.black45,
                  title: Text(member.name),
                  subtitle: Text(member.nim),
                ),
            );
          },
      ),
    );
  }
}
