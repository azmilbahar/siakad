class CarouselsModel {
  String image;
  CarouselsModel(this.image);
}
List<CarouselsModel> carousels = carouselsData.map((item) => CarouselsModel(item["image"])).toList();

var carouselsData=[
  {"image": "assets/1ALFadlu_2.jpg"},
  {"image": "assets/3ALFadlu 2.jpg"},
  {"image": "assets/Terkininewscom_211010070221_img20211010185835.jpg"}

  
];