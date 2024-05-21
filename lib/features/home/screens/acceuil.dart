import 'package:flutter/material.dart';

class Acceuil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 107, 244),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 107, 244),
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  "My Files",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 270),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            StorageInfoCard(),
            CategoryIcons(),
            RecentFiles(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.grey,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.folder,
              color: Colors.grey,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box,
              color: Colors.blue,
              size: 45,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_sharp,
              color: Colors.grey,
              size: 30,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class StorageInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 3, 107, 244),
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 300),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.folder_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        child: ColoredBox(
                          color: Colors.white,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Clear Storage"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            LinearProgressIndicator(
              value: 0.9,
              backgroundColor: const Color.fromARGB(255, 224, 224, 224),
              color: Colors.orange,
            ),
            Text(
              "90Gb",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'You used 90% of your storage',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryIcon(icon: Icons.description, label: 'Docs'),
          CategoryIcon(icon: Icons.photo, label: 'Photos'),
          CategoryIcon(icon: Icons.music_note, label: 'Music'),
          CategoryIcon(icon: Icons.videocam, label: 'Videos'),
        ],
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(height: 4.0),
        Text(label),
      ],
    );
  }
}

class RecentFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            "Recent Files",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          FileItem(
            icon: Icons.music_note,
            name: 'Melancholy memories.mp3',
            date: '25Mb 10 Aug 2023',
          ),
          FileItem(
            icon: Icons.videocam,
            name: 'Beyond the horizon.mp4',
            date: '2,5Gb 25 Sep 2022',
          ),
          FileItem(
            icon: Icons.music_note,
            name: 'Lost in the woods.mp3',
            date: '40Mb 17 Jul 2022',
          ),
        ],
      ),
    );
  }
}

class FileItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final String date;

  FileItem({required this.icon, required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(date),
      trailing: Icon(Icons.more_vert),
    );
  }
}
