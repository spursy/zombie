pragma solidity ^0.4.23;

contract memoryDemo {
    function getMemoryArray() internal pure returns(uint[]) {
        uint[] memory tempArray = new uint[](3);
        tempArray[0] = 1;
        tempArray[1] = 2;
        tempArray[2] = 3;
        return tempArray;
    }
}