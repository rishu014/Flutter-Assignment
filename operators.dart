void main() {
  int a =10;
  int b =20;
  
  print("--------------------");
  print("Arithmetic Operators");
  print("--------------------");
  
  //add
  
  int c= a+b;
  print("sum of two number = $c");
  
  //subtract
  int d=b-a;
  print("sub of two number = $d");
  
  //mult
  int e=b*a;
  print("multiplication of two number = $e");
  
  //divide
  double f=b/a;
  print("division of two number = $f");
  
  print("--------------------");
  print("Relation Operators");
  print("--------------------");
 
  var g= a>b;
  print("a is greater thn b --> $g");
  
  var h= a==b;
  print("a is equal to b --> $h");
  
  var i= a!=b;
  print("a is not equal to b --> $i"); 
  
  print("--------------------");
  print("Type Test Operators");
  print("--------------------");
  
  String s="rishu";
  print(s is int);
  print(s is String);
  print(a is !double );
  print(a is int);
  
  print("--------------------");
  print("BITWISE  Operators");
  print("--------------------");
  
  int a1=0;
  int b1=1;
  
  c= a1&b;
  print("AND operator --> $c");
  
  c=a1|b1;
  print("OR operator --> $c");
  
  c=a1^b1;
  print("XOR operator --> $c");
  
  c= 	~ a1;
  print("NOT operator --> $c");
  
  print("--------------------");
  print("ASSIGNMENT Operators");
  print("--------------------");
  
  c=a*b;
  print("output --> $c ");
  
  var z;
  z??=a+b;
  print("output --> $z"); //a=10 and b=20
  z??=a*b;
  print("output --> $z"); //it will print prev value of z 

  print("--------------------");
  print("LOGICAL Operators");
  print("--------------------");
  
  bool x= a>5 && b<25;
  print("and operator op -->$x ");
  
  bool y= a>5 && b==25;
  print("and operator op -->$y ");
  
  bool w= a>5 || b==25;
  print("and operator op -->$w ");
  
  print("--------------------");
  print("CONDITIONAL Operators");
  print("--------------------");
  z=10;
  String t=(z==10) ? "statement is correct": "statement is wrong" ;
  print("$t");
}
