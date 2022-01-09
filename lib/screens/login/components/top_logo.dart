import 'package:flutter/material.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.elliptical(200, 130))),
      child: Column(
        children: [
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Container(
              height: 100,
              width: 100,
              child: const Image(
                image: AssetImage('images/logo-final-light.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
