class ReviewModel {
  final String client;
  final String clientImg;
  final int ratingStar;
  final String date;
  final String review;

  ReviewModel(
      {required this.client,
      required this.clientImg,
      required this.ratingStar,
      required this.date,
      required this.review});
}
