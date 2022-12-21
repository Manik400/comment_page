import 'package:flutter/material.dart';

List<comment> lt = List<comment>.generate(10, (index) =>  comment('p1'));
// List<comment> lt =[
//   comment('p1'),
//
// ];
class Commentsection extends StatefulWidget {
  const Commentsection({Key? key}) : super(key: key);

  @override
  State<Commentsection> createState() => _CommentsectionState();
}

class _CommentsectionState extends State<Commentsection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0)
            ),child: FittedBox(fit: BoxFit.fill,child: ClipRRect(borderRadius: BorderRadius.circular(20.0),child: Image(image: AssetImage('asset/Koala.jpg')))))),
            Expanded(
              child: ListView(
                children: lt,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 60,child: CircleAvatar(radius: 20,backgroundImage: AssetImage('asset/Koala.jpg'),)),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'add your comment',
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      );
  }
}

class comment extends StatelessWidget {
  String person;
  comment(this.person);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(radius: 20,backgroundImage: AssetImage('asset/Koala.jpg'),),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(person , style: TextStyle(fontSize: 15.0),),
                Text(person , style: TextStyle(fontSize: 10.0),),
                Divider(
                  color: Colors.black,
                  height: 2.0,
                  thickness: 1.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
