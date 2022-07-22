// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "hardhat/console.sol";


contract Token {

    string public name = " MY TOKEN";
    string public symbol = "MT";
    uint public totalSupply = 10000;
    address public owner;
    mapping(address => uint) balances;

    constructor() {
        balances[msg.sender]=totalSupply;
        owner=msg.sender;    
    }

    function transfer(address to , uint amount) external{
        console.log("Sender Balance is %s tokens ", balances[msg.sender]);
        console.log("Trying to srend %s token to %s ", amount,to);
        require(balances[msg.sender] >=amount,"Not enough Tokens");
        balances[msg.sender]-=amount;
        balances[to]+=amount;
    }
    function balanceOf(address account) external view returns(uint){
        return balances[account];
    } 
}