import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class QuizSettingScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("大妖精の部屋"),
        leading: Icon(Icons.face_retouching_natural),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/daiyousei.png",
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 55.0,
            ),
            Text(
              "あらぁ大妖精の部屋へ来たのねぇ♡",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "たくさん遊んでいってちょうだい♡",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextButton(
              onPressed: () {
                context.read(questionProvider).prepare();
                return Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => QuizScreen(),
                    ));
              },
              child: Text("名前あてクイズ"),
              style: textButtonStyle,
            ),
            SizedBox(
              height: 15.0,
            ),
            TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LibraryScreen(),
                  )),
              child: Text("Library"),
              style: textButtonStyle,
            ),
          ],
        ),
      ),
    );
  }
}
