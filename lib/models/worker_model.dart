class WorkerModel {
  String name;
  String phoneNo;
  String email;
  String userID;
  String profession;
  bool isAvailable;
  double rating; 
  int completedJobs; 
  String bio; 
  
  WorkerModel({
    required this.name,
    required this.email,
    required this.phoneNo,
    required this.userID,
    required this.profession,
    this.isAvailable = true,
    this.rating = 0.0,
    this.completedJobs = 0, 
    this.bio = '',
  });
}
