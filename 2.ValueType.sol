pragma solidity ^0.8.4;
contract ValueType{
    // 布尔值
    bool public _bool = true;
    // 布尔值运算
    bool public _bool1 = !_bool;
    bool public _bool2 = _bool && _bool1;
    bool public _bool3 = _bool || _bool1;
    bool public _bool4 = _bool == _bool1;
    bool public _bool5 = _bool != _bool1;

    // 整型
    int public _int = -1;
    uint public _uint = 1;
    uint256 public _uint256 = 22222222;
    // 整型计算
    int public _int1 = 1 - _int;
    uint public _uint2 = 1 + _uint;
    uint256 public _uint256_1 = _uint256 / 11111111;

    // 地址
    address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable public _address1 = payable(_address);
    uint256 public balance = _address1.balance;

    // 定长数组
    bytes32 public _bytes32 = "MiniSolidity";
    bytes1 public _bytes1 = _bytes32[0];
    bytes2 public _bytes2 = _bytes32[0];
    bytes4 public _bytes4 = _bytes32[0];

    // 枚举
    enum ActionSet {Buy, Hold, Sell}
    ActionSet action = ActionSet.Buy;
    
    function enumToUint() external view returns(uint){
        return uint(action);
    }
}