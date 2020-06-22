import 'package:bubble_showcase/bubble_showcase.dart';
import 'package:flutter/material.dart';
import 'package:speech_bubble/speech_bubble.dart';

/// First plugin test method.

/// The demo material app.
class  ChatPage extends StatefulWidget {
  @override
  __BubbleShowcaseDemoAppState createState() => __BubbleShowcaseDemoAppState();
}

class __BubbleShowcaseDemoAppState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Pop Up Speech',
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Pop Up Speech'),
        backgroundColor: Colors.lightGreen,
      ),
      body: _BubbleShowcaseDemoWidget(),
    ),
  );
}

/// The main demo widget.
class _BubbleShowcaseDemoWidget extends StatelessWidget {
  /// The title text global key.
  final GlobalKey _titleKey = GlobalKey();

  /// The first button global key.
  final GlobalKey greetingKey = GlobalKey();
  final GlobalKey _teacher = GlobalKey();
  final GlobalKey _student2 = GlobalKey();


  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.body1.copyWith(
      color: Colors.white,
    );
    return BubbleShowcase(
      bubbleShowcaseId: 'my_bubble_showcase',
      bubbleShowcaseVersion: 1,
      bubbleSlides: [
        _firstSlide(textStyle),
        _secondSlide(textStyle),
        _thirdSlide(textStyle),
        _fourthSlide(textStyle),
      ],
      child: _BubbleShowcaseDemoChild(_titleKey,greetingKey,_teacher,_student2),
    );
  }

  /// Creates the first slide.
  BubbleSlide _firstSlide(TextStyle textStyle) => RelativeBubbleSlide(
    widgetKey: _titleKey,
    child: RelativeBubbleSlideChild(
      widget: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: SpeechBubble(
          nipLocation: NipLocation.TOP,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome to the online classroom',
                  style: textStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'This is my an interactive online class.',
                  style: textStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

  /// Creates the second slide.
  BubbleSlide _secondSlide(TextStyle textStyle) => RelativeBubbleSlide(
    widgetKey: greetingKey,
    child: RelativeBubbleSlideChild(
      widget: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: SpeechBubble(
          nipLocation: NipLocation.TOP,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'README',
                  style: textStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Some important information',
                  style: textStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

  /// Creates the third slide.
  BubbleSlide _thirdSlide(TextStyle textStyle) => RelativeBubbleSlide(
    widgetKey: _teacher,
    child: RelativeBubbleSlideChild(
      widget: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: SpeechBubble(
          nipLocation: NipLocation.TOP,
          color: Colors.redAccent,
          child: Padding(
            padding: const EdgeInsets.only(left:10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Teacher',
                  style: textStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Welcome to my class.',
                  style: textStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

    /// Creates the fourth slide.
  BubbleSlide _fourthSlide(TextStyle textStyle) => RelativeBubbleSlide(
    widgetKey: _student2,
    child: RelativeBubbleSlideChild(
      widget: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: SpeechBubble(
          nipLocation: NipLocation.TOP,
          color: Colors.blue,
          width:1000,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Jimmy',
                  style: textStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Excited to meet you!',
                  style: textStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );



}

/// The main demo widget child.
class _BubbleShowcaseDemoChild extends StatefulWidget {
  /// The title text global key.
  final GlobalKey _titleKey;

  /// The first button global key.
  final GlobalKey greetingKey;
  final GlobalKey _teacher;
  final GlobalKey _student2;

  /// Creates a new bubble showcase demo child instance.
  _BubbleShowcaseDemoChild( this._titleKey,this.greetingKey,this._teacher,this._student2);

  @override
  __BubbleShowcaseDemoChildState createState() => __BubbleShowcaseDemoChildState();
}

class __BubbleShowcaseDemoChildState extends State<_BubbleShowcaseDemoChild> {
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 40,
      horizontal: 40,
    ),

      child:   Column(

          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(

              child: Text(
                'Pop Up Speech',
                key: widget._titleKey,
                style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 25
                ),
                 textAlign: TextAlign.center,
              ),

              color : Colors.grey[200],
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: 2),
            Text(
              'Hie there, today you gonna meet your classmates!',
              key: widget.greetingKey,
              style: TextStyle(
                fontSize: 20,
                color:Colors.lightGreen[800],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
                height: 2.0
            ),
             Padding(
               padding: const EdgeInsets.only(right:100.0),
               child: Image(
                 key: widget._teacher,
                image: AssetImage('assets/teacher.jpg'),
                fit: BoxFit.contain,
                width: 120,

            ),
             ),
            SizedBox(
                height: 2.0
            ),
            Padding(
              padding: const EdgeInsets.only(left:50),
              child: Image(
                key: widget._student2,
                image: AssetImage('assets/john.jpg'),
                fit: BoxFit.contain,
                width: 130,
                height: 120,
              ),
            ),

          ],
        ),

  );
}
