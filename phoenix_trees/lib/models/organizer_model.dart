class OrganizerModel {
  String title;
  String imageLink;
  double rating;
  OrganizerModel({
    required this.title,
    required this.imageLink,
    required this.rating,
  });
}

List<OrganizerModel> organizerList = [
  OrganizerModel(
    title: "Tree Mania",
    imageLink:
        "https://images.unsplash.com/photo-1524602585632-a2a01c12307c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1807&q=80",
    rating: 4.8,
  ),
  OrganizerModel(
    title: "Green Camp",
    imageLink:
        "https://images.unsplash.com/photo-1495908333425-29a1e0918c5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80",
    rating: 4.9,
  ),
  OrganizerModel(
    title: "Eco Park",
    imageLink:
        "https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2026&q=80",
    rating: 4.8,
  ),
  OrganizerModel(
    title: "Nature Lover",
    imageLink:
        "https://images.unsplash.com/photo-1523810192022-5a0fb9aa7ff8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1734&q=80",
    rating: 4.8,
  ),
];
