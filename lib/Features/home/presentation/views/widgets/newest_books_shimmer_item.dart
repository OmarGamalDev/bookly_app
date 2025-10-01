import 'package:flutter/material.dart';

class NewestBooksShimmerItem extends StatelessWidget {
  const NewestBooksShimmerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          // الصورة
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade900,
              ),
            ),
          ),
          const SizedBox(width: 30),
          // النصوص
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // العنوان
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  height: 20,
                  color: Colors.grey.shade900,
                ),
                const SizedBox(height: 10),
                // المؤلف
                Container(
                  width: 100,
                  height: 14,
                  color: Colors.grey.shade900,
                ),
                const SizedBox(height: 20),
                // السعر + الريفيو
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 50,
                      height: 20,
                      color: Colors.grey.shade900,
                    ),
                    const SizedBox(width: 50),
                    Container(
                      width: 80,
                      height: 20,
                      color: Colors.grey.shade900,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}