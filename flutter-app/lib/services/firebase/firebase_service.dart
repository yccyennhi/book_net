import 'dart:io';

import 'package:book_net/view_models/user/curr_user.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../utils/time_utils.dart';

class FirebaseService {
  static final FirebaseService _singleton = FirebaseService._internal();
  static const String newsImagePath = '/newsImages';

  FirebaseService._internal();

  factory FirebaseService() {
    return _singleton;
  }

  final _storageRef = FirebaseStorage.instance.ref();

  Future<List<String>> uploadNewsImages(List<File> _images) async {
    var imageUrls =
        await Future.wait(_images.map((_image) => uploadFile(_image)));
    return imageUrls;
  }

  Future<String> uploadFile(File _image) async {
    final ref = _storageRef.child(
        '$newsImagePath/${CurrUserData().user!.alias}/${TimeUtils.getCurrentDateTime()}');
    UploadTask uploadTask = ref.putFile(_image);
    final snapshot = await uploadTask.whenComplete(() => {});
    return await snapshot.ref.getDownloadURL();
  }
}
