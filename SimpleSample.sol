pragma solidity ^0.4.24;

/**
 * @title Simple Sample Smart Contract
 */
contract SimpleSample {

    mapping(address => bytes32) public messages;

    /**
     * @dev Constructor
    */
    constructor() public {
    }

    /**
     * Get the message for the user
     */
    function getMessage() public view returns(bytes32) {
        return (messages[msg.sender]);
    }
    
    /**
     * Set the message for the user
     */
    function setMessage(bytes32 messageIn) public {
        messages[msg.sender]=messageIn;
    }
}
