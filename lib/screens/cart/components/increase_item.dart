import 'package:flutter/material.dart';



class IncreaseItem extends StatelessWidget {
  const IncreaseItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.start,
      children: [
        Container(
          width: 27,
          height: 27,
          decoration: BoxDecoration(
              color:
                  Theme.of(context)
                      .accentColor,
              borderRadius:
                  BorderRadius
                      .circular(8)),
          child: TextButton(
              onPressed: () {},
              child: Center(
                  child: Container(
                      child: Icon(Icons
                          .remove,size: 12,)))),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "1",
          style: TextStyle(
              fontWeight:
                  FontWeight.w100,
              fontSize: 18),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 27,
          height: 27,
          decoration: BoxDecoration(
              color:
                  Theme.of(context)
                      .accentColor,
              borderRadius:
                  BorderRadius
                      .circular(8)),
          child: TextButton(
              onPressed: () {},
              child: const Center(
                child:
                    Icon(Icons.add,size: 12),
              )),
        ),
        
      ],
    );
  }
}
