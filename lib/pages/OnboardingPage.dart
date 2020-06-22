import 'package:flutter/material.dart';


class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose an Option'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          child: Column(
                  children: <Widget>[
              FlatButton.icon(
                 onPressed: ()  async {
                 dynamic result = await Navigator.pushNamed(context, '/puzzle');
                  },
                 icon: Icon(
                 Icons.games,
                 color: Colors.black,
                       ),
                 label: Text(
                      'Puzzle',
                     style: TextStyle(
                    color: Colors.black,
                      ),
                    )
                   ),
                    FlatButton.icon(
                        onPressed: ()  async {
                          dynamic result = await Navigator.pushNamed(context, '/chat');
                        },
                        icon: Icon(
                          Icons.chat_bubble,
                          color: Colors.black,
                        ),
                        label: Text(
                          'Chat',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                    )
                  ],
                 ),
                ),
              );
            }
          }
