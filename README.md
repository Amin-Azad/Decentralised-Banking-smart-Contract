# Decentralised-Banking-smart-Contract

Decentralized Bank Smart Contract
This repository contains a decentralized banking smart contract implemented in Solidity for the Ethereum blockchain. The contract allows users to securely deposit and withdraw Ether, while maintaining a transparent and immutable transaction history.//

Features
Owner Control: Managed by an owner to ensure that only authorized personnel can access sensitive functionalities.
Secure Transactions: Users can securely deposit and withdraw Ether, with checks to ensure transaction validity and sufficient funds.
Event Logging: All deposits and withdrawals are logged via events, providing a transparent transaction history.
Balance Management: Maintains individual balances for each user, allowing users to query their balance at any time.
Contract Balance Visibility: Only the owner can view the total balance of the contract, ensuring the security of financial information.//

Smart Contract Details
Language: Solidity
Compiler Version: 0.8.0
License: MIT
Usage
Deployment
Deploy the contract to the Ethereum network.
The contract owner is set as the deployer of the contract.
Functions
deposit(): Allows users to deposit Ether into the contract.
withdraw(uint256 amount): Allows users to withdraw Ether from the contract, given they have sufficient balance.
getBalance(): Allows users to check their balance in the contract.
getContractBalance(): Allows the owner to check the total balance of the contract.
Events
Deposit(address indexed account, uint256 amount): Emitted when a user deposits Ether.
Withdraw(address indexed account, uint256 amount): Emitted when a user withdraws Ether.
Installation
Clone the repository:
sh
Copy code
git clone https://github.com/your-username/decentralized-bank.git
Navigate to the project directory:
sh
Copy code
cd decentralized-bank
Compile the contract using your preferred Solidity development environment.
License
This project is licensed under the MIT License - see the LICENSE file for details.
