//admin user history
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserSearchScreen(),
    );
  }
}

class UserSearchScreen extends StatefulWidget {
  @override
  _UserSearchScreenState createState() => _UserSearchScreenState();
}

class _UserSearchScreenState extends State<UserSearchScreen> {
  // Placeholder for user data (replace with actual data fetching)
  List<UserData> users = [
    UserData(userId: '1', username: 'User 1'),
    UserData(userId: '2', username: 'User 2'),
    UserData(userId: '3', username: 'User 3'),
    UserData(userId: '4', username: 'User 4'),
  ];

  List<UserData> filteredUsers = []; // For search results

  @override
  void initState() {
    super.initState();
    filteredUsers = users; // Initially show all users
  }

  void filterUsers(String query) {
    setState(() {
      filteredUsers = users
          .where((user) =>
              user.userId.toLowerCase().contains(query.toLowerCase()) ||
              user.username.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Header Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Service Provider"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("User"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Payment"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Service Request"),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Search Bar
            TextField(
              onChanged: filterUsers, // Call filterUsers on text change
              decoration: InputDecoration(
                hintText: "Search User",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            // User List
            Expanded(
              child: ListView.builder(
                itemCount: filteredUsers.length, // Use filteredUsers
                itemBuilder: (context, index) {
                  final user =
                      filteredUsers[index]; // Access user from filteredUsers
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person), // Replace with user avatar
                    ),
                    title: Text(user.username),
                    subtitle: Text("User ID: ${user.userId}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserData {
  final String userId;
  final String username;

  UserData({required this.userId, required this.username});
}
