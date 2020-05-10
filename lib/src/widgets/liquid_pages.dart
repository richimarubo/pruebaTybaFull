import 'package:flutter/material.dart';

  final TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans"
  );

  final TextStyle goldCoinWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans"
  );

  final TextStyle greyStyle = TextStyle(
    fontSize: 40.0,
    color: Colors.grey, 
    fontFamily: "Product Sans"
  );
  
  final TextStyle whiteStyle = TextStyle(
    fontSize: 40.0,
    color: Colors.white,
    fontFamily: "Product Sans"
  );

  final TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Color(0xFF43028e),
    fontFamily: "Product Sans",
    fontWeight: FontWeight.w800,
  );

  final TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  final TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

final liquidPages = [
  Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "paquelolleve.com",
                  style: goldcoinGreyStyle,
                )
              ],
            ),
          ),
          Image.asset("assets/images/img1.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Ahora mercar es",
                  style: greyStyle,
                ),
                Text(
                  "super fácil",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Traemos para ti las mejores\n"
                  "ofertas que hay.\n"
                  "Seleccionamos lo mejor!",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFFe72557),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "paquelolleve.com",
                  style: goldCoinWhiteStyle,
                )
              ],
            ),
          ),
          Image.asset("assets/images/img2.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Escoge todo lo",
                  style: whiteStyle,
                ),
                Text(
                  "que quieras.",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Tenemos todo lo que\n"
                  "puedas necesitar\n"
                  "y hasta más.\n",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "paquelolleve.com",
                  style: goldcoinGreyStyle,
                )
              ],
            ),
          ),
          Image.asset("assets/images/img3.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Al final solo",
                  style: greyStyle,
                ),
                Text(
                  "debes pagar",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Relájate, tenemos todos\n"
                  "los medios de pago.\n"
                  "Venga paquelolleve.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFFe72557),
      child: Center(
        child: Text(
          "bienvenido",
          style: whiteStyle,
        ),
      ),
    ),
];