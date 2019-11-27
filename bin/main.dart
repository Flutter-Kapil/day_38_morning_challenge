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


List<List<int>> allPermutations(List<int> numbers){

  //numbers = [1,2,3,4]
  List<List<int>> finalList=[];
  if(numbers.length==1){
    finalList.add(numbers);
    return finalList;
  }
  for(int i=0;i<numbers.length;i++) {
    //make a copy of original list tempListFromNumbers = [0,1,2,3]
    List<int> tempListFromNumbers = List.from(numbers);
    //remove the i'th element from this list, tempListFromNumbers = [1,2,3]
    tempListFromNumbers.removeAt(i);
    List<List<int>> semiPermutedList = allPermutations(tempListFromNumbers);
    semiPermutedList.forEach((item)=>item.insert(0,numbers[i]));
    finalList.addAll(semiPermutedList);
  }
  return finalList;
}

main() {
  print(allPermutations([1,2,3]).length);
  print(allPermutations([1,2,3]));
}
