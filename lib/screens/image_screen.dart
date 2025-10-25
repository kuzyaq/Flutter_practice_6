import 'package:flutter/material.dart';
import '../widgets/image_card.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  final List<String> imageUrls = [
    'https://avatars.mds.yandex.net/i?id=18f9e88e32cb4204e2cff1260d68fad379e28581-10840543-images-thumbs&n=13',
    'https://avatars.mds.yandex.net/i?id=9b2d5bf941a4c56bc6f45f20d17e47abdc6d3d57-5173466-images-thumbs&n=13',
    'https://avatars.mds.yandex.net/i?id=5442c3753ca01b01c47766f0d359dbd8f96d55b3-5616093-images-thumbs&n=13',
    'https://avatars.mds.yandex.net/i?id=b23ea0c71cae07553e8d6e800b4b9cc550ca00d7-5234533-images-thumbs&n=13',
    'https://avatars.mds.yandex.net/i?id=d32c12b6a37649f890e4afc5093bd2f23ab736af-12515184-images-thumbs&n=13',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Кешированные изображения'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
          ),

          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: ImageRowItem(
                    imageUrl: imageUrls[index],
                    index: index + 1,
                  ),
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}