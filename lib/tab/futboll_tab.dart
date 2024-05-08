import 'package:flutter/material.dart';
import 'package:rodriguez0403/util/futboll_tile.dart';

class FutbollTab extends StatelessWidget {
  // list of futboll
  List donutsOnSale = [
    // [ futbollFlavor, futbollPrice, futbollColor, imageName ]
    ["MESSI CLUB", "649", Colors.blue, "lib/images/balon1.png"],
    ["REAL MADRID", "399", Colors.amber, "lib/images/balon2.png"],
    ["EPP CLB", "499", Colors.brown, "lib/images/balon3.png"],
    ["PREDATOR TRN", "749", Colors.purple, "lib/images/balon4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return FutbollTile(
          futbollFlavor: donutsOnSale[index][0],
          futbollPrice: donutsOnSale[index][1],
          futbollColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
