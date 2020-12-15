pragma solidity ^0.5.2;
contract AliceScore {
  //      -------- storage area --------  
  uint score;
  //      -------- modifier area --------
  modifier scoreCheck (uint _score) {
       require(_score <=100 && _score>=0); _;
  }
  //      -------- function area --------
  function setScore (uint _score) public scoreCheck(_score) 	{ score = _score; }
   function getScore () view public returns(uint) { return score;}
}
