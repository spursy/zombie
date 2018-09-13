pragma solidity ^0.4.23;

contract modify {
    // 存储用户年龄
    mapping(uint => uint) public age;

    // 修饰函数
    modifier olderAge(uint _userId, uint _age) {
        require(age[_userId] > _age, "must older");
        _;
    } 

    function driverCar(uint _userId) public view olderAge(_userId, 16) returns(bool) {
        
    }
}