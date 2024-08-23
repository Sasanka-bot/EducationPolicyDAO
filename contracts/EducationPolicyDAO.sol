// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EducationPolicyDAO {
    struct Proposal {
        uint id;
        string description;
        uint voteCount;
        address proposer;
    }

    mapping(uint => Proposal) public proposals;
    mapping(address => mapping(uint => bool)) public votes; // Tracks who voted on what proposal
    uint public proposalCount;
    address public owner;

    event ProposalCreated(uint id, string description, address proposer);
    event Voted(uint proposalId, address voter);
    event ProposalPassed(uint proposalId);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    modifier hasNotVoted(uint proposalId) {
        require(!votes[msg.sender][proposalId], "You have already voted on this proposal");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Function to create a new proposal
    function createProposal(string memory _description) public {
        proposalCount++;
        proposals[proposalCount] = Proposal(proposalCount, _description, 0, msg.sender);
        emit ProposalCreated(proposalCount, _description, msg.sender);
    }

    // Function to vote on a proposal
    function vote(uint proposalId) public hasNotVoted(proposalId) {
        Proposal storage proposal = proposals[proposalId];
        proposal.voteCount++;
        votes[msg.sender][proposalId] = true;
        emit Voted(proposalId, msg.sender);

        // Example condition: If voteCount reaches a certain threshold, mark as passed
        if (proposal.voteCount >= 10) {  // Example threshold
            emit ProposalPassed(proposalId);
        }
    }

    // Function to retrieve a proposal's details
    function getProposal(uint proposalId) public view returns (string memory, uint, address) {
        Proposal storage proposal = proposals[proposalId];
        return (proposal.description, proposal.voteCount, proposal.proposer);
    }
}

