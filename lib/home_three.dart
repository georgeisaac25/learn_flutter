
import 'package:flutter/material.dart';


class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ColumnWidget(),
        color: Colors.lightGreen,
        alignment: Alignment.center,
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text('Deliver features faster', textAlign: TextAlign.center),
        ),
        Expanded(
          child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }
}

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RowWidget(),
        getFirstTextWidget(),
        Text('We cannot let a stray gunshot give us away'),
        Text('We will fight up close, seize the moment and stay in it'),
        Text('It’s either that or meet the business end of a bayonet'),
        Text('The code word is ‘Rochambeau,’ digme?'),
        Text('Rochambeau!',
            style:
            DefaultTextStyle
                .of(context)
                .style
                .apply(fontSizeFactor: 2.0)),
        ImageWidget(),
        ButtonWidget()
      ],
    );
  }

  Text getFirstTextWidget()
  {
    return Text('Through the night, we have one shot to live another day');
  }

  Image getImage(){
    return Image(
      image: AssetImage('images/xam.png'),
      alignment: Alignment.center,
    );
  }
}



class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('images/xam.png'),
      alignment: Alignment.center,
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        "Click me",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontFamily: "Roboto", fontSize: 20, fontWeight: FontWeight.w700),
      ),
      onPressed: () => buttonClickEvent(context),
      elevation: 6.0,
      color: Colors.deepOrange,
    );
  }

  void buttonClickEvent(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Working"),
      content: Text("Its working"),
    );

    showDialog(context: context,
        builder: (BuildContext context) {
          return alert;
        }
    );
  }
}