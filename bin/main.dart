// Trapping Rain Water
// Given n non-negative integers representing an elevation map where the width
// of each bar is 1, compute how much water it is able to trap after raining.
/// https://assets.leetcode.com/uploads/2018/10/22/rainwatertrap.png
// The above elevation map is represented by array [0,1,0,2,1,0,1,3,2,1,2,1].
// In this case, 6 units of rain water (blue section) are being trapped.
import 'dart:math';

// Example:
// Input: [0,1,0,2,1,0,1,3,2,1,2,1]
// Output: 6
int trappedWater(List<int> elevations) {
  int maximum = elevations.reduce(max);
  while (elevations.any((element) => element != 0)) {
    List<int> maxIndices = [];
    elevations.forEach((element) {
      if (element == maximum) {
        maxIndices.add(elevations.indexOf(element));
        if (element!=0) {
          element--;
          print(element);
        }
      }
    });
    maximum--;
  }
}

main() {
//  trappedWater([0,2,0,3,2,4]);
//  trappedWater([0,1,0,2,1,0,1,3,2,1,2,1]);
  trappedWater([3, 0, 1, 2, 0, 1]);
}
