import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula_dicoding/detail_screen.dart';
import 'package:submission_flutter_pemula_dicoding/models/event.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: const Text("Home", style: TextStyle(
          fontFamily: "NotoSerif",
          fontSize: 30.0,
          fontWeight: FontWeight.w600
        )),
        centerTitle: true,
      ),
      body: ListData(),
    );
  }
}

class ListData extends StatelessWidget {
  const ListData({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: universityEvent.length,
      itemBuilder: (context, index) {
        final Event dataEvent = universityEvent[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(dataEvent: dataEvent);
            }));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Card(
              elevation: 5,
              color: Colors.white,
              surfaceTintColor: Colors.transparent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        dataEvent.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            dataEvent.day,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),
                          ),
                          const SizedBox(height: 8.0), // Spasi antar teks
                          Text(
                            dataEvent.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1, // Batasi menjadi 1 baris
                            style: const TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            ),
                          ),
                          const SizedBox(height: 8.0), // Spasi antar teks
                          Row(
                            children: [
                              const Icon(Icons.location_on, color: Colors.black),
                              const SizedBox(width: 4.0),
                              Expanded(
                                child: Text(
                                  dataEvent.location,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1, // Batasi menjadi 2 baris
                                  style: const TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        );
      },
    );
  }
}
