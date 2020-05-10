class Restaurantes {

  List<Restaurante> items = new List();

  Restaurantes();

  Restaurantes.fromJsonList( List<dynamic> jsonList  ) {
    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final restaurante = new Restaurante.fromJsonMap(item);
      items.add( restaurante );
    }
  }
}

class Restaurante {
  int id;
  String name;
  String address;
  String city;
  String state;
  String area;
  String postalCode;
  String country;
  String phone;
  double lat;
  double lng;
  int price;
  String reserveUrl;
  String mobileReserveUrl;
  String imageUrl;

  Restaurante({
    this.id,
    this.name,
    this.address,
    this.city,
    this.state,
    this.area,
    this.postalCode,
    this.country,
    this.phone,
    this.lat,
    this.lng,
    this.price,
    this.reserveUrl,
    this.mobileReserveUrl,
    this.imageUrl,
  });

  Restaurante.fromJsonMap( Map<String, dynamic> json ) {
      id               = json['id'];
      name             = json['name'];
      address          = json['address'];
      city             = json['city'];
      state            = json['state'];
      area             = json['area'];
      postalCode       = json['postal_code'];
      country          = json['country'];
      phone            = json['phone'];
      lat              = json['lat'] / 1;
      lng              = json['lng'] / 1;
      price            = json['price'];
      reserveUrl       = json['reserve_url'];
      mobileReserveUrl = json['mobile_reserve_url'];
      imageUrl         = json['image_url'];
  }
}