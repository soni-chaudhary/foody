class UnbordingContent {
  String? image;
  String? title;
  String? discription;
  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> content = [
  UnbordingContent(
    image: "images/address.png",
    title: "Discover place \n near you",
    discription:
        "We make it simple to final the food you crave. Enter your address and let us do the rest.",
  ),
  UnbordingContent(
    image: "images/choose.jpg",
    title: "Choose A Tasty\n Dish",
    discription:
        "When you order Eat Street,we'll hook\n you up with exclusive coupons, specials and rewards.",
  ),
  UnbordingContent(
    image: "images/delivery.jpg",
    title: "Pick Up Or \n Delivery",
    discription:
        "We make food ordering fast,simple and free - no matter if you order online or cash",
  ),
];
