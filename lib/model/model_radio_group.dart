class ModelRadioGroup {
  final int index;
  final String text;

  ModelRadioGroup({required this.index, required this.text});

  @override
  String toString() {
    return 'ModelRadioGroup with  Index :${this.index} & Text : ${this.text}';
  }
}
