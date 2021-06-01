import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

void main() {
  runApp(MyApp());
}

//for message box
final maxLines = 10;

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Feedback',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.grey[400],
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 8.0),
                    child: Text(
                      "Rate Your Expirence",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Are you Satisfied With services?',
                        style: Theme.of(context).textTheme.caption),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SmoothStarRating(
                      isReadOnly: false,
                      size: 40,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      defaultIconData: Icons.star_border,
                      color: Colors.red,
                      starCount: 5,
                      allowHalfRating: true,
                      spacing: 2.0,
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: null,
                    endIndent: null,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 10.0, bottom: 10.0),
                    child: Text(
                      'Tell us what can be improved?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Button(
                              bname: 'Overall service',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Button(
                              bname: 'Wallet',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Button(
                              bname: 'Customer support',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Button(
                              bname: 'Transperency',
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Container(
                          margin: EdgeInsets.all(12),
                          height: maxLines * 24.0,
                          child: TextField(
                            maxLines: maxLines,
                            decoration: InputDecoration(
                              hintText: "Enter a message",
                              fillColor: Colors.grey[300],
                              filled: true,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(25),
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )),
                          child: Text(
                            'Submit',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//custom button container

class Button extends StatelessWidget {
  const Button({Key key, this.bname}) : super(key: key);
  final String bname;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Tapped a Container");
      },
      child: Container(
        height: 30,
        width: 150,
        child: Text(
          bname,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            border: Border.all(style: BorderStyle.solid)),
      ),
    );
  }
}
