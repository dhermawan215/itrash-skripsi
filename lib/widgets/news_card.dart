import 'package:flutter/material.dart';
import 'package:itrash_skripsi/theme.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 220,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://img.antaranews.com/cache/800x533/2023/07/21/IMG_20230721_221150.jpg.webp',
            width: 200,
            height: 140,
            fit: BoxFit.fill,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Pemda DIY Meminta Kabupaten Kota Kelola Sampah Secara Mandiri',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle:
                        const TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/berita');
                  },
                  child: const Text(
                    'Baca Selengkpanya....',
                    style: TextStyle(color: Colors.white70),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
