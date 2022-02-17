var min_length = 6
var lc : Bool = false
var uc : Bool = false
var num : Bool = false
var sym : Bool = false
var sec = 0

print("Please enter your password you want to check:")
var password = readLine()

for char in password!{
  switch char {
    case "\u{0061}"..."\u{007A}": /// if lowercase
      lc = true
    case "\u{0041}"..."\u{005A}": /// if uppercase
      uc = true
    case "\u{0030}"..."\u{0039}": /// if number
      num = true
    case "\u{0021}"..."\u{002F}": /// if symbol
      sym = true
    case "\u{003B}"..."\u{0040}": /// if symbol
      sym = true
    case "\u{005B}"..."\u{0060}": /// if symbol
      sym = true
    default:
      print("some other char has been found namely \(char)")
  }
}

func secCalc() {
  lc ? sec += 1 : print("\u{001B}[0;35m" + "Your choosen password \(password!) does not have an lowercase Character.") /// if bool lc true
  uc ? sec += 1 : print("\u{001B}[0;35m" + "Your choosen password \(password!) does not have an uppercase Character.") /// if bool uc true
  num ? sec += 1 : print("\u{001B}[0;35m" + "Your choosen password \(password!) does not have an number.") /// if bool num true
  sym ? sec += 1 : print("\u{001B}[0;35m" + "Your choosen password \(password!) does not have an special symbol.") /// if bool sym true
  (password!).count >= min_length ? sec += 1 : print("Your choosen password \(password!) is shorter than 6 Characters.") /// if password.count is higher than min_lentgh
}

func secCheck() {
  switch sec {
  case 1:
    print("\u{001B}[0;31m" + "Your password is weak. It does only have one security feature.") /// if security is 1
  case 2:
    print("\u{001B}[0;33m" + "Your password is medium. It has two security features.") /// if security is 2
  case 3:
    print("\u{001B}[0;36m" + "Your password is good. It has three security features.") /// if security is 3
  case 4:
    print("\u{001B}[0;32m" + "Your password is strong. It has four security features.") /// if security is 4
  case 5:
    print("\u{001B}[0;32m" + "Your password is very strong. It has five security features.") /// if security is 4
  default:
    print("\u{001B}[0;31m" + "Your password is very weak. It doesnt have any security features.") /// if security is 0
  }

}
secCalc()
secCheck()

