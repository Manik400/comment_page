import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<comment> lt = List<comment>.generate(10, (index) => comment('p1'));

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: FittedBox(
                        fit: BoxFit.fill,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child:
                                Image(image: AssetImage('asset/Koala.jpg')))))),
            Container(
              height: 40.0,
              color: Colors.white,
              child: Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Row(children: [
                      IconButton(
                        icon: Icon(
                          Icons.thumb_up_alt,
                          size: 20.0,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        '247',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(width: 15.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_comment_outlined, size: 20.0),
                      ),
                      Text(
                        '27',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(width: 15.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share, size: 20.0),
                      ),
                    ]),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.save, size: 20.0),
                    ),
                  ])),
            ),
            Expanded(
              child: ListView(
                children: lt,
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                      width: 60,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('asset/Koala.jpg'),
                      )),
                  Expanded(
                      child: SizedBox(
                    height: 35.0,
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: 'add your comment',
                      ),
                    ),
                  ))
                ],
              ),
            ),
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
        padding: EdgeInsets.fromLTRB(4.0, 12.0, 4.0, 12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('asset/Koala.jpg'),
                  ),
                ),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              person,
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '8h ago',
                              style: TextStyle(fontSize: 8.0),
                            ),
                          ],
                        ),
                        Text(
                          "helo its first comment As an intellectual object, a book is prototypically a composition of such great length that it takes a considerable investment of time to compose ",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ]),
                ),
                Divider(
                  color: Color(0x9c000000),
                  height: 10.0,
                )
              ],
            ),
          ],
        ));
  }
}
