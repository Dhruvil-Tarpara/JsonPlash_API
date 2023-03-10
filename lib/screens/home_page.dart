import 'package:flutter/material.dart';
import 'package:jasonplash/globals/global.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    ButtonStyle button = ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        const Color(0xff395B64),
      ),
    );

    TextStyle buttonText = const TextStyle(
      color: Color(0xffE7F6F2),
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C3333),
        title: const Text(
          "{JSON} Placeholder",
          style: TextStyle(color: Color(0xffE7F6F2),),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffE7F6F2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/posts";
                    Global.title = "Posts";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Posts",style: buttonText,),
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.title = "Comments";
                    Global.endpoint = "/comments";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Comments",style: buttonText),
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/albums";
                    Global.title = "Albums";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Albums",style: buttonText),
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/photos";
                    Global.title = "Photos";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Photos",style: buttonText),
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/todos";
                    Global.title = "Todos";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Todos",style: buttonText),
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/users";
                    Global.title = "Users";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Users",style: buttonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
