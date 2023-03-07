import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'posts_record.g.dart';

abstract class PostsRecord implements Built<PostsRecord, PostsRecordBuilder> {
  static Serializer<PostsRecord> get serializer => _$postsRecordSerializer;

  @BuiltValueField(wireName: 'post_photo')
  String? get postPhoto;

  @BuiltValueField(wireName: 'post_title')
  String? get postTitle;

  @BuiltValueField(wireName: 'post_description')
  String? get postDescription;

  @BuiltValueField(wireName: 'time_posted')
  DateTime? get timePosted;

  @BuiltValueField(wireName: 'num_comments')
  int? get numComments;

  @BuiltValueField(wireName: 'num_votes')
  int? get numVotes;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PostsRecordBuilder builder) => builder
    ..postPhoto = ''
    ..postTitle = ''
    ..postDescription = ''
    ..numComments = 0
    ..numVotes = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostsRecord._();
  factory PostsRecord([void Function(PostsRecordBuilder) updates]) =
      _$PostsRecord;

  static PostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostsRecordData({
  String? postPhoto,
  String? postTitle,
  String? postDescription,
  DateTime? timePosted,
  int? numComments,
  int? numVotes,
}) {
  final firestoreData = serializers.toFirestore(
    PostsRecord.serializer,
    PostsRecord(
      (p) => p
        ..postPhoto = postPhoto
        ..postTitle = postTitle
        ..postDescription = postDescription
        ..timePosted = timePosted
        ..numComments = numComments
        ..numVotes = numVotes,
    ),
  );

  return firestoreData;
}
