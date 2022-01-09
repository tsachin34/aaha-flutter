import 'package:flutter/material.dart';

class TopNavContent extends StatelessWidget {
  const TopNavContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              SizedBox(
                  height: 50,
                  width: 50,
                  child: Image(
                    image: AssetImage('images/logo-final-dark.png'),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Aaha",
                  style: TextStyle(
                      fontSize: 16,
                      // fontStyle:FontStyle.italic,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),

          // SizedBox(width: 200,),
          SearchWidget()
          // const Icon(Icons.search),
        ],
      ),
    );
  }
}

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animController;
  bool isForward = false;

  @override
  void initState() {
    super.initState();

    animController = AnimationController(
        duration: Duration(milliseconds: 500), vsync: this);

    final curvedAnimation =
        CurvedAnimation(parent: animController, curve: Curves.easeOutExpo);

    animation = Tween<double>(begin: 0, end: 190).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: animation.value,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: TextField(
                  cursorColor: Colors.white12,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    
                    border: InputBorder.none,
                  
                  ),
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                 color: Theme.of(context).accentColor,
                  borderRadius: animation.value > 1
                      ? BorderRadius.only(
                          topLeft: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(50),
                          topRight: Radius.circular(50))
                      : BorderRadius.circular(50)),
              child: IconButton(
                icon: Icon(Icons.search),
                color: Colors.white,
                onPressed: () {
                  if (!isForward) {
                    animController.forward();
                    isForward = true;
                  } else {
                    animController.reverse();
                    isForward = false;
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
