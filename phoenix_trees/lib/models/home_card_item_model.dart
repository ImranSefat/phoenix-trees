class HomeCardItemModel {
  final String title;
  final String organizer;
  final String topic;
  final double amount;
  final String imageLink;

  HomeCardItemModel({
    required this.title,
    required this.organizer,
    required this.topic,
    required this.amount,
    required this.imageLink,
  });
}

List<HomeCardItemModel> homecardItemList = [
  HomeCardItemModel(
    title: "Feel the Nature",
    amount: 1200,
    imageLink:
        "https://images.unsplash.com/photo-1503785640985-f62e3aeee448?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1748&q=80",
    organizer: "Volunteers",
    topic: "Current",
  ),
  HomeCardItemModel(
    title: "Let's build garden",
    amount: 133,
    imageLink:
        "https://images.unsplash.com/photo-1466692476868-aef1dfb1e735?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
    organizer: "Volunteers",
    topic: "Future",
  ),
  HomeCardItemModel(
    title: "Feel the Nature",
    amount: 1200,
    imageLink:
        "https://images.unsplash.com/photo-1503785640985-f62e3aeee448?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1748&q=80",
    organizer: "Volunteers",
    topic: "Current",
  ),
  HomeCardItemModel(
    title: "Let's build garden",
    amount: 133,
    imageLink:
        "https://images.unsplash.com/photo-1466692476868-aef1dfb1e735?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
    organizer: "Volunteers",
    topic: "Future",
  ),
];
