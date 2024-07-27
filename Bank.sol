// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {

    address public owner;

    mapping(address=>uint) public balances;


    event Deposit (address indexed account,  uint256 amount );

    event Withdraw(address indexed account , uint256 amount);

    modifier onlyOwner{

    require(msg.sender==owner, "only owner can call this function");_;
    }
    constructor(){
        owner=msg.sender; 
    }
    
    function deposit() external payable{
        require(msg.value>0, "Amount must be greater than zero");
        balances[msg.sender]+=msg.value;
        emit Deposit(msg.sender,msg.value);

    }
    function withdraw(uint256 amount)external{
        require(amount>0,"Amount must be grater than Zero");
        require(amount<=balances[msg.sender],"Insufficient fund");
        balances[msg.sender]-=amount;
        payable (msg.sender).transfer(amount);
        emit Withdraw(msg.sender, amount);
    }
    function getBalance()external view returns(uint256){
        return balances[msg.sender];
    }
    function getContractBalance() external view onlyOwner returns (uint256){
        return address(this).balance;
    }
}
    