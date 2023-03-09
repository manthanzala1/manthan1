pragma solidity ^0.8.0;
contract modifiers {
   address owner;
   string helloQuotes;
   event allQuotes(string);
   constructor() public {
      helloQuotes = "Nothing is easy; nothing is imposible";
      owner = msg.sender;
   }
   modifier onlyowner(){
      require(msg.sender == owner,"you can't execute the function");
      _;
   }
   function addQuote(string memory _quote)onlyowner public{
      helloQuotes = _quote;
      emit allQuotes(_quote);
   }
   function getQuote()public view returns (string memory){
      return helloQuotes;
   }
   
}