pragma solidity ^0.8.0;
contract Test {
   event balance(address account,string message, uint _val);
   function set(uint _val) public{      
      emit balance(msg.sender, "has value",_val);
   }
}