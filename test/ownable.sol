pragma solidity ^0.4.23;
contract Ownable {
    // 合约持有人地址
    address public owner;
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    // 将第一次执行合约的人作为合约持有人
    constructor() public {
        owner = msg.sender;
    }
    // 函数修饰器
    modifier onlyOwner() {
        require(msg.sender == owner);
        _; // 当合约执行到此时，执行函数
    }
    // 变更合约的持有人
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0));
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}