import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nova_politica/pages/GuidePage.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/PoliticalPartiesPage.dart';
import 'package:nova_politica/pages/QuizPage.dart';
import 'package:nova_politica/pages/globals.dart';
import 'PostPage.dart';
import 'globals.dart';

// Define a Post model to represent each post
class Post {
  final String id;
  final String username;
  final String title;
  final String content;

  Post(this.id, this.username, this.title, this.content);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forum Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ForumPage(),
    );
  }
}

class ForumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 166, 255),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(255, 177, 166, 255),
        title: Center(
            child: Text('Forum',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Material(
                color: Colors.grey,
                child: InkWell(
                  onTap: () {
                    //COLOCAR AQUI O QUE FAZER QUANDO SE CLICA NA IMAGEM DA PESSOA
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 24, bottom: 50),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(''),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'João',
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                        Text(
                          'joao@gmail.com',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home_outlined),
                    title: const Text('Início'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MyHomePage(
                            title: 'Nova Política',
                          ),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.menu_book_outlined),
                    title: const Text('Guia para Iniciantes'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MyGuide(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.quiz_outlined),
                    title: const Text('Quiz'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MyQuizApp(),
                        ),
                      );
                    },
                  ),
                  // !!!ERRO!!! - Após iniciar o quiz, voltando para trás, já não é possível ver o menu dos partidos!
                  ListTile(
                    leading: const Icon(Icons.group_outlined),
                    title: const Text('Partidos'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MyPartiesApp(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.forum_outlined),
                    title: const Text('Forum'),
                    onTap: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: 800,
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('posts').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
                return Center(child: Text('No posts yet!'));
              } else {
                List<Post> posts = snapshot.data!.docs.map((doc) {
                  return Post(
                    doc.id,
                    doc['username'], // Populate the username field
                    doc['title'],
                    doc['content'],
                  );
                }).toList();
                return ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      ListTile(
                        title: Text(
                            '${posts[index].title} | By: ${posts[index].username}'), // Display user's name beside post title
                        subtitle: Text(posts[index].content),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PostDetailsPage(post: posts[index]),
                            ),
                          );
                        },
                      ),
                      Divider(),
                    ]);
                  },
                );
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreatePostPage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class PostDetailsPage extends StatelessWidget {
  final Post post;
  final TextEditingController _replyController = TextEditingController();

  PostDetailsPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 166, 255),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(255, 177, 166, 255),
        title: Center(
            child: Text('Forum',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: 800,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(post.title),
                subtitle: Text(post.content),
              ),
              Divider(), // Add a separator here

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
                    } else if (snapshot.data == null ||
                        snapshot.data!.docs.isEmpty) {
                      return Center(child: Text('No replies yet!'));
                    } else {
                      List<Widget> replyWidgets =
                          snapshot.data!.docs.map((doc) {
                        return Column(children: [
                          ListTile(
                          title: Text(doc['username']),
                          subtitle: Text(doc['content']),
                          ),
                          Divider(), // Add a separator here
                        ]);
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
                            'username':
                                '$userEmail', // Replace with actual username/email
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
        ),
      ),
    );
  }
}

class CreatePostPage extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 166, 255),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(255, 177, 166, 255),
        title: Center(
            child: Text('Forum',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: 800,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _contentController,
                  decoration: InputDecoration(
                    labelText: 'Content',
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    String title = _titleController.text.trim();
                    String content = _contentController.text.trim();
                    // Add the post to Firestore
                    FirebaseFirestore.instance.collection('posts').add({
                      'username':
                          '$userEmail', // Replace with actual username/email
                      'title': title,
                      'content': content,
                    });
                    // Navigate back to the forum page
                    Navigator.pop(context);
                  },
                  child: Text('Create'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
