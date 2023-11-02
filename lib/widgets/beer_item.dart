import 'package:flutter/material.dart';

import '../beer/beer.dart';

class BeerItemWidget extends StatelessWidget {
  const BeerItemWidget({super.key, required this.beer});

  final Beer beer;

  /// [- Column (to stack widgets on top of each other)](https://api.flutter.dev/flutter/widgets/Column-class.html)
  /// [- Row (to place widgets next to each other)](https://api.flutter.dev/flutter/widgets/Row-class.html)
  /// [- Text (to display text)](https://api.flutter.dev/flutter/widgets/Text-class.html)
  /// [- Image.network (to display an image)](https://api.flutter.dev/flutter/widgets/Image-class.html)
  /// [- SizedBox (to add some spacing between widgets)](https://api.flutter.dev/flutter/widgets/SizedBox-class.html)
  /// [- Card (to add a nice background to your widget)](https://api.flutter.dev/flutter/material/Card-class.html)

  @override
  Widget build(BuildContext context) {
    print(beer.imageUrl);

    return LayoutBuilder(builder: (context, constraints) {
      return Card(
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
          width: constraints.maxWidth,
          height: 100,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 100,
                    child: Image.network(beer.imageUrl),
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth - 70,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Text(beer.name),
                      Text(
                        beer.description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

class BeerTag extends StatelessWidget {
  const BeerTag({super.key, required this.beer});

  final Beer beer;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
