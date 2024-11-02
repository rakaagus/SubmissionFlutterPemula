import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula_dicoding/models/event.dart';

var informationTextStyle = const TextStyle(fontFamily: 'NotoSerif', fontWeight: FontWeight.w400, fontSize: 16.0);

class DetailScreen extends StatelessWidget {
  final Event dataEvent;

  const DetailScreen({super.key, required this.dataEvent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            const FavoriteButton()
          ],
          surfaceTintColor: Colors.white,
          title: Text(dataEvent.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                  fontFamily: "NotoSerif",
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600
              )
          )
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(dataEvent.imageAsset, fit: BoxFit.cover, height: 400,),
                Container(
                  margin: const EdgeInsets.only(top: 16.0, left: 8.0),
                  child: Text(
                    dataEvent.name,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontFamily: 'NotoSerif',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0, bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          const Icon(Icons.calendar_today),
                          const SizedBox(height: 8.0),
                          Text(dataEvent.day, style: informationTextStyle)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          const Icon(Icons.access_time_outlined),
                          const SizedBox(height: 8.0),
                          Text(dataEvent.time, style: informationTextStyle)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    dataEvent.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0, left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Organizer",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: Image.asset(
                                dataEvent.ownerImage.isNotEmpty ? dataEvent.ownerImage : "images/dummy_image.jpeg",
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            dataEvent.eventOwner,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 100.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: dataEvent.isAvailable ? () {} : null,
                    style: ElevatedButton.styleFrom(
                      minimumSize: dataEvent.isAvailable ? Size(100.0, 50) : Size(200, 50),
                    ),
                    child: Text(dataEvent.isAvailable ? "Join This Event" : "Registerd Has Been Close"),
                  ),
                  // Percabangan untuk menampilkan icon button
                  if (dataEvent.isAvailable) // Pastikan dataEvent memiliki properti ini
                    const MarkEventButton()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        )
    );
  }
}

class MarkEventButton extends StatefulWidget {
  const MarkEventButton({super.key});

  @override
  State<MarkEventButton> createState() => _MarkEventButtonState();
}

class _MarkEventButtonState extends State<MarkEventButton> {
  bool isMark = false;
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isMark = !isMark;
          });
        },
        icon: Icon(
          isMark ? Icons.bookmark_outlined : Icons.bookmark_border,
          color: Colors.red,
        )
    );
  }
}

