extension MyExtension on String{
  String toCapitalized(){
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}