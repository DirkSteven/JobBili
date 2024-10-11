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

  ServicePost(
    this.serviceId,
    this.userId,
    this.userDisplayName,
    this.title,
    this.content,
    this.category,
    this.location,
    this.dateTime,
    this.isOpen
  );
}