// import library
import 'package:flutter/material.dart';

// class name
class CourseraStylePage extends StatelessWidget {
  final List<Course> courses = [
    Course(
      title: 'Google IT Support Professional Certificate',
      description:
          'Gain the skills you need for an entry-level job in IT support.',
      imageUrl: 'assets/course_image1.png',
      rating: 4.8,
      reviews: 1200,
    ),
    Course(
      title: 'Google Data Analytics Professional Certificate',
      description:
          'Learn data analytics skills to help you get started in your career.',
      imageUrl: 'assets/course_image2.png',
      rating: 4.7,
      reviews: 1500,
    ),
    // Add more Course objects as needed
  ];

  CourseraStylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          try {
            final course = courses[index];
            return Card(
              margin: const EdgeInsets.all(10),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(course.imageUrl,
                        width: double.infinity, height: 150, fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    Text(course.title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    Text(course.description,
                        maxLines: 2, overflow: TextOverflow.ellipsis),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 16),
                        const SizedBox(width: 5),
                        Text('${course.rating} (${course.reviews} reviews)'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Enroll logic
                        try {
                          enrollInCourse(course);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('Enrolled in ${course.title}!')),
                          );
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Error enrolling: $e')),
                          );
                        }
                      },
                      child: const Text('Enroll Now'),
                    ),
                  ],
                ),
              ),
            );
          } catch (e) {
            return Center(child: Text('Error loading course: $e'));
          }
        },
      ),
    );
  }

  void enrollInCourse(Course course) {
    // Implement enroll logic here
    // This is a placeholder for actual functionality
    print('Enrolled in ${course.title}.');
  }
}

// Course class
class Course {
  final String title;
  final String description;
  final String imageUrl;
  final double rating;
  final int reviews;

  Course({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
  });
}
