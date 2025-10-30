import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {

  // get instance of firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //get user stream
  Stream<List<Map<String,dynamic>>> getUsersStream() {
    return _firestore.collection('users').snapshots().map((snapshot) => null);
  }

  //send messages

}