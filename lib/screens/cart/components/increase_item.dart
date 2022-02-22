import 'package:flutter/material.dart';



class IncreaseItem extends StatefulWidget {
  const IncreaseItem({
    Key? key,
  }) : super(key: key);

  @override
  State<IncreaseItem> createState() => _IncreaseItemState();
}

class _IncreaseItemState extends State<IncreaseItem> {
  int _itemQty=0;
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
              onPressed: () {
                if(_itemQty>0){
                      setState(() {
                        _itemQty--;
                      });
                    }
              },
              child: Center(
                  child: Container(
                      child: Icon(Icons
                          .remove,size: 12,)))),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "$_itemQty",
          style: const TextStyle(
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
              onPressed: () {
                setState(() {
                      _itemQty++;
                    });
              },
              child: const Center(
                child:
                    Icon(Icons.add,size: 12),
              )),
        ),
        
      ],
    );
  }
}
