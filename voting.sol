// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Voting {

    // Contract deploy karne wale ko owner banayega
    address public owner;

    // Total votes
    uint256 public totalVotes;

    // Proposal ka structure
    struct Proposal {
        string name;
        uint256 voteCount;
    }

    // Proposals ki list
    Proposal[] public proposals;

    // Authorized voters
    mapping(address => bool) public authorizedVoters;

    // Kis voter ne vote kar diya
    mapping(address => bool) public hasVoted;


    // Constructor sirf contract deploy hone par ek baar chalta hai
    constructor() {
        owner = msg.sender;
    }


    // New proposal add karna
    function addProposal(string memory _name) public {
        proposals.push(Proposal(_name, 0));
    }


    // Sirf owner voter ko authorize kar sakta hai
    function authorizeVoter(address _voter) public {

        require(msg.sender == owner, "Only owner");

        authorizedVoters[_voter] = true;
    }


    // Vote cast karna
    function vote(uint256 _proposalIndex) public {

        require(authorizedVoters[msg.sender], "Not authorized");

        require(!hasVoted[msg.sender], "Already voted");

        proposals[_proposalIndex].voteCount += 1;

        hasVoted[msg.sender] = true;

        totalVotes += 1;
    }


    // Winner calculate karna
    function getWinner() public view returns (string memory) {

        if (proposals[0].voteCount > proposals[1].voteCount) {

            return proposals[0].name;

        } else {

            return proposals[1].name;
        }
    }
}