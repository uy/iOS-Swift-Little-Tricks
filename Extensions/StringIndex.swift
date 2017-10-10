extension String {
  // return from start to given index
  subscript (i: Int) -> Character {
    return self[index(startIndex, offsetBy: i)]
  }

  // return character at given index
  subscript (i: Int) -> String {
    return String(self[i] as Character)
  }

  // return string from given range
  subscript (r: Range<Int>) -> String {
    let start = index(startIndex, offsetBy: r.lowerBound)
    let end = index(startIndex, offsetBy: r.upperBound)
    return self[Range(start ..< end)]
  }
	
  // return index of given character
  func index(of char: Character) -> Int? {
    if let idx = characters.index(of: char) {
      return characters.distance(from: startIndex, to: idx)
    }
    return nil
  }
}
