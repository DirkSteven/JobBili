class ServicePost {
  String serviceId;
  String userId;
  String userDisplayName;
  String title;
  String content;
  String category;
  String location;
  String dateTime;
  bool isOpen;
  List<String> images;
  int lowerBudgetRange;
  int upperBudgetRange;

  ServicePost(
    this.serviceId,
    this.userId,
    this.userDisplayName,
    this.title,
    this.content,
    this.category,
    this.location,
    this.dateTime,
    this.isOpen,
    this.images,
    this.lowerBudgetRange,
    this.upperBudgetRange
  );
}