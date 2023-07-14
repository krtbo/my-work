import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/card.dart';

void main() => runApp(const MaterialApp(
      home: App(),
    ));

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            centerTitle: true,
            title: const Text("Game"),
            backgroundColor: Colors.black54,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: ((context) {
                      return AlertDialog(
                        title: const Text("설정"),
                        content: const Text("테스트"),
                        actions: [
                          Container(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("창 닫기"),
                            ),
                          )
                        ],
                      );
                    }),
                  );
                },
                icon: const Icon(Icons.settings),
              )
            ],
          ),
        ),

        // 여기부터 본체

        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/testimage2.png'),
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(color: Color(0xffeeeeee)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Expanded(
                            child: Text(
                                'C:\\Users\\경상남도교육청\\Desktop\\realgame-main\\realgame\\assets\\line.xml'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(color: Color(0xffeeeeee)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          BotborderSelectCard(line: "약을 받는다."),
                          BotborderSelectCard(line: "통조림을 받는다."),
                          NoneborderSelectCard(line: "물을 받는다."),
                          SizedBox(
                            height: 3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
