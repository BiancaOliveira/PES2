// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lobisomen/main.dart';

void main() {
  testWidgets('Meu primeiro teste', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    var sliderKey = UniqueKey();
    var value = 0.0;
    String name =  'Jogador 2';
    // Tells the tester to build a UI based on the widget tree passed to it
    await tester.pumpWidget(

      StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return MaterialApp(
              home: Scaffold(
                body: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 100.0),
                      alignment: Alignment.center,
                      child:
                      Image.asset(
                        'images/logo6.png',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 80.0),
                      child: Text(
                          'Passe para o proximo jogador',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SpecialElite',
                            fontSize: 40.0,
                            color: Color.fromRGBO(246, 249, 174, 1.0),
                          )
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(4.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                      ),
                      child: Text(
                          name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      ),
                    ),
                  ],
                ),
                backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
              ),
            );
          }
      ),
    );
    expect(value, equals(0.0));

    // Taps on the widget found by key
    await tester.tap(find.byKey(sliderKey));

    // Verifies that the widget updated the value correctly
    expect(value, equals(0.5));
  }
  );
}
