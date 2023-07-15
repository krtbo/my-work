import 'package:flutter/material.dart';
import 'card.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  /* 이 부분은 이미지 부분 */
                  const Text(
                    ' Hello',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                    ),
                  ),

                  /* 이 부분은 문장 부분 */
                  Flexible(
                    flex: 2,
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 20,
                      strutStyle: const StrutStyle(fontSize: 16),
                      text: const TextSpan(
                        text: ' please wait now loading... please wait ... ',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  /* 이 부분은 선택지 부분 */
                  const Flexible(
                    flex: 1,
                    child: SelectCard(
                      line: 'dml',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
