class Helpers{
  static String capitalize(String str){
    var text = "${str[0].toUpperCase()}${str.substring(1)}";
    return text;
  }
}