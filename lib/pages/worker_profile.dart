import 'package:flutter/material.dart';
import '../models/worker_model.dart'; // Import the worker model

class WorkerProfilePage extends StatelessWidget {
  final WorkerModel worker; // Use WorkerModel to pass data

  const WorkerProfilePage({
    super.key,
    required this.worker,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Worker Profile'),
        backgroundColor: Colors.amber, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              worker.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            Text(
              "Profession: ${worker.profession}",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8),

            Text(
              worker.isAvailable ? "Available" : "Not Available",
              style: TextStyle(
                fontSize: 16,
                color: worker.isAvailable ? Colors.green : Colors.red,
              ),
            ),
            SizedBox(height: 8),

            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                SizedBox(width: 4),
                Text(
                  worker.rating.toStringAsFixed(1),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "(${worker.completedJobs} jobs completed)", 
               style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
  ),
),

              ],
            ),
            SizedBox(height: 16),
            
            Text(
              "About Me:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              worker.bio.isNotEmpty ? worker.bio : "No bio available",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
