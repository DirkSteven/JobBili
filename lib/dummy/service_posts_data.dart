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
      ["https://www.rmjeconstruction.com/wp-content/uploads/2019/10/knocking-off-the-wall.jpg", "https://www.expresssewer.com/hubfs/types%20of%20plumbing%20systems%20with%20copper%20pipes.jpeg", "https://cdn.prod.website-files.com/642c021ff5e1407cd1335eaf/64492986462df701b91ad74d_House%20Renovation%20Feature.jpg"],
      1000,
      2000
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
      ["https://www.rmjeconstruction.com/wp-content/uploads/2019/10/knocking-off-the-wall.jpg", "https://www.expresssewer.com/hubfs/types%20of%20plumbing%20systems%20with%20copper%20pipes.jpeg", "https://cdn.prod.website-files.com/642c021ff5e1407cd1335eaf/64492986462df701b91ad74d_House%20Renovation%20Feature.jpg"],
      1000,
      2000
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
      ["https://www.rmjeconstruction.com/wp-content/uploads/2019/10/knocking-off-the-wall.jpg", "https://www.expresssewer.com/hubfs/types%20of%20plumbing%20systems%20with%20copper%20pipes.jpeg", "https://cdn.prod.website-files.com/642c021ff5e1407cd1335eaf/64492986462df701b91ad74d_House%20Renovation%20Feature.jpg"],
      1000,
      2000
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
      ["https://www.rmjeconstruction.com/wp-content/uploads/2019/10/knocking-off-the-wall.jpg", "https://www.expresssewer.com/hubfs/types%20of%20plumbing%20systems%20with%20copper%20pipes.jpeg", "https://cdn.prod.website-files.com/642c021ff5e1407cd1335eaf/64492986462df701b91ad74d_House%20Renovation%20Feature.jpg"],
      1000,
      2000      
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
      ["https://www.rmjeconstruction.com/wp-content/uploads/2019/10/knocking-off-the-wall.jpg", "https://www.expresssewer.com/hubfs/types%20of%20plumbing%20systems%20with%20copper%20pipes.jpeg", "https://cdn.prod.website-files.com/642c021ff5e1407cd1335eaf/64492986462df701b91ad74d_House%20Renovation%20Feature.jpg"],
      1000,
      2000
    ),
  ];