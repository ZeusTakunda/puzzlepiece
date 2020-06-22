import 'package:flutter/material.dart';
import 'package:flutter_image_picker/pages/ChatPage.dart';
import 'package:flutter_image_picker/pages/OnboardingPage.dart';
import 'package:flutter_image_picker/pages/PuzzlePage.dart';
import 'package:flutter_image_picker/pages/PuzzlePiece.dart';
import 'package:flutter_image_picker/pages/bubble.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => OnboardingPage(),
      '/puzzle': (context) => MyApp(),
      '/chat': (context) => ChatPage(),
    }
));