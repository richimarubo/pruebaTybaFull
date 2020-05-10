import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ListaWidget extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
              fit: BoxFit.cover,
              width: 50,
              height: 50,
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl:"https://i.pinimg.com/originals/e4/cb/a0/e4cba0e2350904760730784aa5562a0e.png"),
            ),
            title: Text('McDonalds', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            subtitle: Text( '3:30am - 9/05/20' ),
            trailing: Text('-4.000', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            onTap: (){},
          ),
          SizedBox(height:20.0),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
              fit: BoxFit.cover,
              width: 50,
              height: 50,
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl:"https://media-cdn.tripadvisor.com/media/photo-s/05/97/3e/5f/mister-wings.jpg"),
            ),
            title: Text('Mister Wings', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            subtitle: Text( '4:30am - 9/05/20' ),
            trailing: Text('-8.000', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            onTap: (){},
          ),
          SizedBox(height:20.0),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
              fit: BoxFit.cover,
              width: 50,
              height: 50,
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl:"https://restaurantestoriadamore.com/assets/images/logo.jpg"),
            ),
            title: Text('Storia D Amore', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            subtitle: Text( '5:30am - 9/05/20' ),
            trailing: Text('-16.000', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            onTap: (){},
          ),
          SizedBox(height:20.0),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
              fit: BoxFit.cover,
              width: 50,
              height: 50,
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl:"https://static-images.ifood.com.br/image/upload/f_auto,t_high/logosgde/04a73ce2-9ce1-44d6-9e84-04d1adf27785_ILFOR_ZALES.png"),
            ),
            title: Text('il Forno', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            subtitle: Text( '6:30am - 9/05/20' ),
            trailing: Text('-100.000', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            onTap: (){},
          ),
          SizedBox(height:20.0),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
              fit: BoxFit.cover,
              width: 50,
              height: 50,
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl:"https://www.vivepalmira.com/wp-content/uploads/2019/01/15871778_360374231001912_8343991266851941488_n.png"),
            ),
            title: Text('Cheers Pizza', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            subtitle: Text( '7:30am - 9/05/20' ),
            trailing: Text('-28.000', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            onTap: (){},
          ),
          SizedBox(height:20.0),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
              fit: BoxFit.cover,
              width: 50,
              height: 50,
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl:"https://media-cdn.tripadvisor.com/media/photo-p/0a/95/ca/e4/sushi-green.jpg"),
            ),
            title: Text('Sushi Green', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            subtitle: Text( '8:30am - 9/05/20' ),
            trailing: Text('-48.000', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            onTap: (){},
          ),
          SizedBox(height:20.0),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
              fit: BoxFit.cover,
              width: 50,
              height: 50,
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl:"https://cdn.shopify.com/s/files/1/0065/8204/2677/products/LOGOS-1_10_1_600x.png"),
            ),
            title: Text('La Trattorina', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            subtitle: Text( '7:30am - 9/05/20' ),
            trailing: Text('-38.000', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
            onTap: (){},
          ),
        ]
      );
  }
}