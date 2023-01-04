import 'package:flutter/material.dart';
import 'package:jasonplash/globals/global.dart';

class DetailsPageTwo extends StatefulWidget {
  const DetailsPageTwo({Key? key}) : super(key: key);

  @override
  State<DetailsPageTwo> createState() => _DetailsPageTwoState();
}

class _DetailsPageTwoState extends State<DetailsPageTwo> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C3333),
        title: Text(
          "${Global.title} ${data['id']}",
          style: const TextStyle(
            color: Color(0xffE7F6F2),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffE7F6F2),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo.png"),
              opacity: 0.3,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: const Color(0xff395B64),
                        child: Text(
                          data['id'].toString(),
                          style: const TextStyle(
                            color: Color(0xffE7F6F2),
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Card(
                        color: const Color(0xff395B64),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            data['userId'].toString(),
                            style: const TextStyle(
                              color: Color(0xffE7F6F2),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                            "Title",
                          ),
                          Text(
                            "${data['title']}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const Text(
                            "Subtitle ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          Text(
                            "${data['subtitle'] ?? "Subtitle is not found ..."}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                            ),
                          ),
                        ],
                      ),
                    ),
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
