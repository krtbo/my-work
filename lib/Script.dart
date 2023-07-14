import 'package:flutter/material.dart';
import 'widgets/card.dart';

class Main2 extends StatelessWidget {
  const Main2({super.key});

  final tex =
      'C:\\Users\\경상남도교육청\\Desktop\\realgame-main\\realgame\\assets\\line.xml';

  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xFF424242),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          tex,
                          strutStyle: const StrutStyle(fontSize: 12),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: const BoxDecoration(color: Colors.brown),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                BotborderSelectCard(line: "dml"),
                                BotborderSelectCard(line: "d"),
                                BotborderSelectCard(line: "s"),
                                SizedBox(height: 30),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
