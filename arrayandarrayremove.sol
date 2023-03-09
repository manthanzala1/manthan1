pragma solidity ^0.8.0;
contract array{
    uint [] number;
    function set(uint a)public{
        number.push(a);
    }
    function get()public view returns(uint[]memory){
        return number;
    }
    function arraydelete(uint a)public{
        uint b;
        uint length = number.length-1;
        for(uint i=0;i<number.length;i++){
            if(number[i]==a){
                b=i;
            }
        }
        number[b] = number[length];
        number.pop();
    }
}