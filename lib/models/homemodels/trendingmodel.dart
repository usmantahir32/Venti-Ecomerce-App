import 'package:ecommerce_app/constants/images.dart';

class HomeTrendingModel {
  final String image, title, location;
  final int reviews;
  final double rating;
  bool favourite;

  HomeTrendingModel(
      {required this.image,
      this.favourite = false,
      required this.title,
      required this.location,
      required this.reviews,
      required this.rating});
}

List<HomeTrendingModel> hometrending_model = [
  HomeTrendingModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeTrendingModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeTrendingModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeTrendingModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5),
  HomeTrendingModel(
      image: AppImages.loginImg,
      title: "Adidas",
      location: "KBR Park",
      reviews: 1045,
      rating: 4.5)
];
