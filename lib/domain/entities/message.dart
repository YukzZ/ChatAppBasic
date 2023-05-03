class Message{

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });

  String text;
  String? imageUrl;
  FromWho fromWho;
}

enum FromWho {me, her}