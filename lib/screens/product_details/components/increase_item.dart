import 'package:flutter/material.dart';

class IncreaseItem extends StatelessWidget {
  const IncreaseItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 280,
      left: 0,
      child: Container(
        width: double.infinity,
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(8)),
                child: TextButton(
                    onPressed: () {},
                    child: Center(child: Container(child: Icon(Icons.remove)))),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(8)),
                child: TextButton(
                    onPressed: () {},
                    child: const Center(
                      child: Icon(Icons.add),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
