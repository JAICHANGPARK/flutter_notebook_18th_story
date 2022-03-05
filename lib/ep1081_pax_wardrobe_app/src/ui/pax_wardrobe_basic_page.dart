import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PaxWardrobeBasicPage extends StatefulWidget {
  const PaxWardrobeBasicPage({Key? key}) : super(key: key);

  @override
  State<PaxWardrobeBasicPage> createState() => _PaxWardrobeBasicPageState();
}

class _PaxWardrobeBasicPageState extends State<PaxWardrobeBasicPage> {
  double _widthValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Basic information",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text("Width"),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "50",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
                Text(
                  "300",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Slider(
            max: 300,
            min: 50,
            value: _widthValue,
            thumbColor: Colors.black,
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            divisions: 250,
            onChanged: (double value) {
              setState(() {
                _widthValue = value;
              });
            },
            label: "${_widthValue.toStringAsFixed(0)} cm",
          ),
          const SizedBox(
            height: 24,
          ),
          const Text("Height"),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 42,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Center(
                    child: Text(
                      "201 cm",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text(
                        "236 cm",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text("Depth"),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 42,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Center(
                    child: Text(
                      "35 cm",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text(
                        "58 cm",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text("Frame color"),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.check,
                    size: 20,
                  ),
                ),
              ),
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: CachedNetworkImageProvider(
                        "https://cdn.pixabay.com/photo/2015/01/07/16/37/wood-591631__480.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: CachedNetworkImageProvider(
                        "https://cdn.pixabay.com/photo/2016/11/23/15/04/wood-1853403__340.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  image: const DecorationImage(
                    image: CachedNetworkImageProvider(
                        "https://cdn.pixabay.com/photo/2016/01/09/16/28/wood-1130494__340.jpg"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
