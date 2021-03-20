class Book {

 String  _name ;
  int _price ;
  String _image ;
 Book.image(this._name, this._price, this._image);

  Book(this._name, this._price);
 int get price => _price;

  String get name => _name;


 String get image => _image;
 set image(String value) {
    _image = value;
  }

  set price(int value) {
    _price = value;
  }

  set name(String value) {
    _name = value;
  }
}