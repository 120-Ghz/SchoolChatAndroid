String textForChatIcon(String text) {
  String result = "";
  if (text.split(" ").length >= 2) {
    try {
      if (text.split(" ")[0].length == 3 && text.split(" ").length >= 2) {
        return text.split(" ")[0][0].toUpperCase() +
            text.split(" ")[0][1].toUpperCase() +
            text.split(" ")[1][0].toUpperCase();
      }
    } catch (e) {}
    try {
      result += int.parse(text.split(" ")[0][0]).toString();
      try {
        result += int.parse(text.split(" ")[0][1]).toString();
        try {
          result += text.split(" ")[1][0].toString().toUpperCase();
        } catch (e) {}
      } catch (e) {}
    } catch (e) {
      result += text.split(" ")[0][0].toUpperCase();
      result += text.split(" ")[1][0].toUpperCase();
    }
  }
  if (text.split(" ").length == 1) {
    result += text[0].toUpperCase();
  }
  return result;
}
