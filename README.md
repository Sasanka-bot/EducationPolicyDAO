### README.md

# Education Policy DAO
![image](https://github.com/user-attachments/assets/9894cbed-d1a0-4037-b197-3bee8030a9d8)

## Vision
The Education Policy DAO is designed to decentralize the process of creating and implementing educational policies. By leveraging blockchain technology, it empowers educators, students, and policymakers to collaboratively propose and vote on new policies. The DAO aims to create a transparent and community-driven approach to improving educational systems, ensuring that decisions reflect the collective voice of the community.

## Flowchart
```plaintext
+---------------------+        +------------------+
| Create Proposal     |        | Voting on Proposal|
| User submits a      |        | Users cast votes  |
| new policy proposal |        | on active proposals|
+---------------------+        +------------------+
            |                           |
            v                           v
+---------------------+        +------------------+
| Proposal List       |        | Proposal Outcome |
| All active proposals|        | If vote count >= X,|
| are listed publicly |        | proposal is passed|
+---------------------+        +------------------+
```

## Contract Address
*Contract Address:* 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8

The contract is deployed on the Ethereum blockchain at the address mentioned above. You can interact with it using Ethereum-compatible wallets such as MetaMask, and view the contract details on Etherscan.

## Key Functions
1. **createProposal(string memory _description)**: Allows any user to create a new proposal.
2. **vote(uint proposalId)**: Allows users to vote on a proposal they haven’t voted on before.
3. **getProposal(uint proposalId)**: Retrieves the details of a specific proposal, including its description, vote count, and proposer’s address.

## Future Scope
- **Improved Governance Models**: Implement more advanced governance models such as quadratic voting, reputation-based voting, or delegation to enhance decision-making.
- **Integration with Educational Institutions**: Collaborate with real-world educational institutions to pilot this DAO as a decision-making tool.
- **Multi-Chain Support**: Expand the contract to support multiple blockchain platforms, increasing accessibility and scalability.
- **Incentive Mechanisms**: Implement reward systems to incentivize participation, such as token-based rewards for active members who propose or vote on policies.

## Contract Details
- **Compiler Version**: Solidity ^0.8.0
- **Owner Address**: `0xYourAddressHere`
- **Proposal Threshold**: A proposal requires 10 votes to be marked as passed (modifiable as needed).
- **Transparency**: All proposals and votes are publicly accessible on the blockchain, ensuring full transparency and accountability.

### How to Interact
1. **Connect Wallet**: Use an Ethereum-compatible wallet like MetaMask.
2. **Submit Proposal**: Use the `createProposal` function to propose a new policy.
3. **Vote on Proposals**: Use the `vote` function to cast your vote on active proposals.

### Contribution
We welcome contributions to enhance the DAO. If you’re a developer, educator, or policymaker interested in contributing, feel free to fork the project and submit a pull request.

## Developer Details
- **Developer:** Sasanka Kashyap
- **Email:** sasankakashyap59@gmail.com
- **Github:** https://github.com/Sasanka-bot/EducationPolicyDAO
- ![image](https://github.com/user-attachments/assets/722a4cd5-37ae-45a2-9653-bdece98bed15)


