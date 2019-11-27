// Challenge: Find all permutations
// Given a collection of *distinct* integers, return all possible permutations.
/// Example:
//  Input: [1,2,3]
//  Output:
//  [
//    [1,2,3],
//    [1,3,2],
//    [2,1,3],
//    [2,3,1],
//    [3,1,2],
//    [3,2,1]
//  ]
//[1,2,3]
allPermutations(List<int> numbers){
  //numbers = [1,2,3]
  List<List<int>> finalList=[];
  for(int i=0;i<numbers.length;i++) {
    //make a copy of original list tempNumbers = [1,2,3]
    List<int> tempNumbers = List.from(numbers);
    //remove the i'th element from this list, tempNumbers = [2,3]
    tempNumbers.removeAt(i);
    //----swap [2,3]
    for(int j=0;j<2;j++) {
      List<int> temp = [numbers[i]];
      swap(tempNumbers);
      temp.addAll(List.from(tempNumbers));
      finalList.add(temp);
    }
  }
  return finalList;
}
List<int> swap(List<int> twoNumbers){
  int temp = twoNumbers[0];
  twoNumbers[0]=twoNumbers[1];
  twoNumbers[1]=temp;
  return twoNumbers;
}
main() {
  print(allPermutations([1,2,3]));
}
