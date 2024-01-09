void main() {
  int a = 100;

  int b = 200;

  print('A: $a | B:$b \n');

  double da = 111.76;
  var db =857.54;
  print('dA: $da | dB: $db \n');

  String name1 = 'gaurav';
  var name2 = 'banik';

  print('my name is: $name1 $name2 \n ');

  bool isItTrue1 = true;
  var isItTrue2 = false;
  print('isItTrue: $isItTrue1 | isItTrue2: $isItTrue2 \n');

 dynamic weakVariable = 100;
 print('WeakVariable 1: $weakVariable \n');

 //int to string
  String oneAsString =1.toString();
  assert (oneAsString == '1');

  //double to string
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == 3.14);

BigInt longvalue;
longValue = BigInt.parse('76346546547571263');

print(longValue);
}