import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final String dateTime;
  final String location;
  final String imagePath;
  final String tripStatus;
  final String price;
  final VoidCallback onRepeat;

  const TripCard({
    Key? key,
    required this.dateTime,
    required this.location,
    required this.imagePath,
    required this.tripStatus,
    required this.price,
    required this.onRepeat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Container(
      height: mediaQuery.height * 0.2,
      width: mediaQuery.width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date & Time
          Text(
            dateTime,
            style: const TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),

          // Row with Image, Location, Status, and Price
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Trip Image Container
              Container(
                height: mediaQuery.height * 0.12,
                width: mediaQuery.width * 0.2,
                decoration: BoxDecoration(
                  color: const Color(0xffF9FAFC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(imagePath, fit: BoxFit.contain),
                ),
              ),

              // Trip Details
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        location,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.check_circle_outline_outlined, color: Colors.blue, size: 15),
                          const SizedBox(width: 5),
                          Text(
                            tripStatus,
                            style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Price & Repeat Button
              Column(
                children: [
                  Text(price, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  GestureDetector(
                    onTap: onRepeat,
                    child: Container(
                      height: mediaQuery.height * 0.05,
                      width: mediaQuery.width * 0.16,
                      decoration: BoxDecoration(
                        color: const Color(0xffE8EDEF),
                        border: Border.all(color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Repeat',
                          style: TextStyle(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
