import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageRowItem extends StatelessWidget {
  final String imageUrl;
  final int index;

  const ImageRowItem({
    super.key,
    required this.imageUrl,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Text(
              'Img $index',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: Colors.grey[200],
                    child: const Center(
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: Colors.grey[200],
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error, color: Colors.red, size: 20),
                        SizedBox(height: 4),
                        Text(
                          'Error',
                          style: TextStyle(fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(4),
            child: const Text(
              'Кеш',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}