import 'package:flutter/material.dart';

class DiceImage extends StatefulWidget {
  final int diceValue;

  DiceImage({Key key, this.diceValue}) : super(key: key);

  @override
  _DiceImageState createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {
  final AssetImage imageOne = AssetImage('lib/assets/dice/one.png');
  final AssetImage imageTwo = AssetImage('lib/assets/dice/two.png');
  final AssetImage imageThree = AssetImage('lib/assets/dice/three.png');
  final AssetImage imageFour = AssetImage('lib/assets/dice/four.png');
  final AssetImage imageFive = AssetImage('lib/assets/dice/five.png');
  final AssetImage imageSix = AssetImage('lib/assets/dice/six.png');

  @override
  void didChangeDependencies() {
    precacheImage(imageOne, context);
    precacheImage(imageTwo, context);
    precacheImage(imageThree, context);
    precacheImage(imageFour, context);
    precacheImage(imageFive, context);
    precacheImage(imageSix, context);
    super.didChangeDependencies();
  }

  AssetImage getSelectedImage() {
    switch (widget.diceValue) {
      case 1:
        return imageOne;
      case 2:
        return imageTwo;
      case 3:
        return imageThree;
      case 4:
        return imageFour;
      case 5:
        return imageFive;
      case 6:
        return imageSix;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    AssetImage selectedImage = getSelectedImage();
    if (selectedImage == null) {
      return Container();
    }
    return Image(
      image: selectedImage,
    );
  }
}
