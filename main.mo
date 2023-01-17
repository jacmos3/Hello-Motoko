import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Nat "mo:base/Nat";

actor {
  public func greet(name : Text) : async Text {
    return("Hello" # name # "!")
  };

  //DAY 2 LECTURE, MOTOKO: CHAR, TEXT & ITERATORS
  type Pattern = Text.Pattern;
  let p1 : Pattern = #char ('c');
  let p2 : Pattern = #text("oto");
  let p3 : Pattern = #predicate(Char.isDigit);

  let d : Char = 'D';
  let text: Text = "Motoko";
  let text2: Text = "Bootcamp 2023";

  let array : [Text] = ["Rust", "Motoko", "Typescript", "Python", "C++", "C#"];
  public func test() : async () {
        Debug.print(debug_show(Char.toNat32(d)));
  };

  public func test1() : async Bool{
    return (Text.contains(text,p1));
  };

  public func test2() : async Bool{
    return (Text.contains(text,p2));
  };

  public func test3() : async Bool{
    return (Text.contains(text,p3));
  };
  public func test4() : async Bool{
    return (Text.contains(text2,p3));
  };

  public func textToBlob(t : Text) : async Blob{
    Text.encodeUtf8(t);
  };

  public func blobToText(b : Blob) : async ?Text{
    Text.decodeUtf8(b);
  };
  
  public func test5() : async (){
    for (number in i){
      Debug.print(debug_show(number));
    };
  };

  public func test6() : async (){
    for (letter in text.chars()){
      Debug.print(debug_show(letter));
    }
  };

  public func test7() : async (){
    for (language in array.vals()){
      Debug.print("Hello " # language);
    }
  };
  let i = Iter.fromArray(array);
  let s = Iter.size(i);
  public func test8() : async (){
    Debug.print("Size of array: " # Nat.toText(s));
  }
}
