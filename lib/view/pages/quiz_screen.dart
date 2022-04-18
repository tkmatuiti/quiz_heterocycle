import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class QuestionScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final questionNumber = context.read(questionProvider).questionNumberString;
    final state = useProvider(questionProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: Text("クイズよ〜"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text("第$questionNumber問 あたしは誰ぇ〜", style: lookTextStyle),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(state.currentQuestion.path),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnswerButton(
                    text: state.currentQuestion.answerList[0],
                    number: 0,
                  ),
                  AnswerButton(
                    text: state.currentQuestion.answerList<img class="ranking-number" src="https://techgamelife.net/wp-content/themes/jin/img/rank01.png">,
                    number: 1,
                  ),
                ],
              ),
            ],
          ),
          state.status == QuestionStatus.WAIT
              ? Center(
            child: Image.asset(state.resultPath),
          )
              : Container(),
        ]),
      ),
    );
  }
}