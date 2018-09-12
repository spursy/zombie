pragma solidity ^0.4.23;
// 引用外部合约
import "./ownable.sol";
// 外部接口合约
contract ExternalDemo  {
    function GetParams(uint256 id) external view returns(
        string name,
        string fullname,
        uint256 age); 
}
// 继承外部合约
contract Demo is Ownable {
    // 声明外部接口合约变量
    ExternalDemo externalDemo;
    // 通过外部合约地址实例化外部合约
    function SetContractAddress(address _address) external onlyOwner {
        externalDemo = ExternalDemo(_address);
    }
    // 调用外部合约
    function GetAge(uint256 id) external view {
        uint256 _age;
        (,,_age) = externalDemo.GetParams(id);
    }
}