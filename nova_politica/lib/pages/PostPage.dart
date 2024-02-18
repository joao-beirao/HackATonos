import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nova_politica/pages/ForumPage.dart';


class PostDetailsPage extends StatelessWidget {
  final Post post;
  final TextEditingController _replyController = TextEditingController();

  PostDetailsPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(post.title),
            subtitle: Text(post.content),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('posts')
                  .doc(post.id)
                  .collection('replies')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
                  return Center(child: Text('No replies yet!'));
                } else {
                  List<Widget> replyWidgets = snapshot.data!.docs.map((doc) {
                    return ListTile(
                      title: Text(doc['username']),
                      subtitle: Text(doc['content']),
                    );
                  }).toList();
                  return ListView(
                    children: replyWidgets,
                  );
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a reply...',
                    ),
                    controller: _replyController,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    String content = _replyController.text.trim();
                    if (content.isNotEmpty) {
                      // Add reply to Firestore
                      FirebaseFirestore.instance
                          .collection('posts')
                          .doc(post.id)
                          .collection('replies')
                          .add({
                        'username': 'user@example.com', // Replace with actual username/email
                        'content': content,
                      });
                      // Clear the text field
                      _replyController.clear();
                    }
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
