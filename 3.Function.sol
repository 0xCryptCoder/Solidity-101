pragma solidity ^0.8.4;

contract Functions{
    uint256 public statusPara = 1;

    function add() external{
        statusPara = statusPara + 1;
    }

    // 包含pure关键字的函数不能访问更不能改变合约内的任何变量
    function addPure(uint256 _number) external pure returns(uint256 pure_add_number){
        pure_add_number = _number + 1;
    }

    // 包含view关键字的函数可以访问但不能改变合约内的任何变量
    function addView() external view returns(uint256 view_add_number){
        view_add_number = statusPara + 1;
    }

    function minus() internal {
        statusPara = statusPara - 1;
    }

    // 合约内的函数可以调用internal函数
    function minusCall() external {
        minus();
    }

    function minusPayable() external payable returns(uint256 balance){
        minus();
        balance = address(this).balance;
    }
}