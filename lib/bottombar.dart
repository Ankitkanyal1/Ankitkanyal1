import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: _page);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _page,
          onTap: (index) {
            this._pageController.animateToPage(index,
                duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Users"),
            new BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Messages"),
            new BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call")
          ]),
      body: PageView(
        controller: _pageController,
        onPageChanged: (newpage) {
          setState(() {
            this._page = newpage;
          });
        },
        children: [
          singlechild(title: "Users", icon: Icons.person, color: Colors.amber),
          singlechild(
              title: "Message", icon: Icons.message, color: Colors.green),
          singlechild(title: "Call", icon: Icons.call, color: Colors.blue)
        ],
      ),
    );
  }

  singlechild({String title, IconData icon, Color color}) {
    return Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white,fontSize: 26),
            )
          ],
        ));
  }
}
