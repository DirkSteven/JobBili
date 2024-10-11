import '../models/service_post.dart';

List<ServicePost> servicePostsDummyData = [
    ServicePost(
      'sp1',
      'user1',
      'Juan Dela Cruz',
      'Home Painting',
      'Looking for someone to paint the exterior of my house.',
      'Home Improvement',
      '123 Maple Street, Springfield',
      DateTime.now().subtract(Duration(days: 1)).toString(),
      true,
    ),
    ServicePost(
      'sp2',
      'user1',
      'Juan Dela Cruz',
      'Garden Landscaping',
      'Need help with designing and landscaping my garden.',
      'Gardening',
      '123 Maple Street, Springfield',
      DateTime.now().subtract(Duration(days: 2)).toString(),
      true,
    ),
    ServicePost(
      'sp3',
      'user2',
      'Juan Dela Cruz',
      'Plumbing Repairs',
      'Urgent repair needed for a leaking pipe under the sink.',
      'Plumbing',
      '456 Oak Avenue, Springfield',
      DateTime.now().toString(),
      true,
    ),
    ServicePost(
      'sp4',
      'user2',
      'Juan Dela Cruz',
      'Electrical Wiring',
      'Install new electrical wiring in the living room.',
      'Electrical',
      '456 Oak Avenue, Springfield',
      DateTime.now().subtract(Duration(days: 3)).toString(),
      true,
    ),
    ServicePost(
      'sp5',
      'user1',
      'Juan Dela Cruz',
      'Roof Repair',
      'Repair needed for a damaged section of the roof.',
      'Home Improvement',
      '123 Maple Street, Springfield',
      DateTime.now().subtract(Duration(days: 5)).toString(),
      false,
    ),
  ];