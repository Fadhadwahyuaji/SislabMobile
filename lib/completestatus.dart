import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CompleteStatus(),
    );
  }
}

class CompleteStatus extends StatefulWidget {
  const CompleteStatus({Key? key}) : super(key: key);

  @override
  State<CompleteStatus> createState() => _CompleteStatusState();
}

class _CompleteStatusState extends State<CompleteStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 128, 255),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          'Loan Status',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.folder),
                    text: 'New',
                  ),
                  Tab(
                    icon: Icon(Icons.timelapse),
                    text: 'Process',
                  ),
                  Tab(
                    icon: Icon(Icons.checklist_rounded),
                    text: 'Complete',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  const Center(
                    child: Text('Tab 1 New'),
                  ),
                  const Center(
                    child: Text('Tab 2 Process'),
                  ),
                  // Konten tab 3 (Complete)
                  ListView.builder(
                    itemCount:
                        10, // Ubah sesuai dengan jumlah item yang Anda inginkan
                    itemBuilder: (BuildContext context, int index) {
                      final bool isRejected = index % 2 ==
                          0; // Untuk baris ganjil, tandai sebagai rejected

                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 5.0,
                                  height: 50.0,
                                  color: isRejected
                                      ? Colors
                                          .red // Warna garis merah jika rejected
                                      : Colors
                                          .green, // Warna garis hijau jika approve
                                  margin: const EdgeInsets.only(right: 16.0),
                                ),
                                Icon(
                                  isRejected
                                      ? Icons
                                          .cancel // Icon silang merah jika rejected
                                      : Icons
                                          .check_circle, // Icon centang hijau jika approve
                                  color: isRejected
                                      ? Colors
                                          .red // Warna ikon merah jika rejected
                                      : Colors
                                          .green, // Warna ikon hijau jika approve
                                  size: 36.0,
                                ),
                                const SizedBox(width: 16.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Arduino $index',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    const SizedBox(height: 4.0),
                                    Text(
                                      'ID00000$index',
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: isRejected
                                      ? Colors
                                          .red // Warna lingkaran merah jika rejected
                                      : Colors
                                          .green, // Warna lingkaran hijau jika approve
                                  size: 10.0,
                                ),
                                Text(
                                  isRejected
                                      ? 'Rejected' // Tulisan "Rejected" jika rejected
                                      : 'Approve', // Tulisan "Approve" jika approve
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: isRejected
                                        ? Colors
                                            .red // Warna teks merah jika rejected
                                        : Colors
                                            .green, // Warna teks hijau jika approve
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.light,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
