pragma solidity ^0.4.17;

contract Adoption {

    //adopters addresses
    address[16] public adopters;

    //Adopting Function 
    function adopt(uint petId) public returns (uint) {
        require(petId > 0 && petId < 15, "Please Provide Correct PetId");
        adopters[petId] = msg.sender;

        return petId;
    }

    //Retrieving the adopters
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
}