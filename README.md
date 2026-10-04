# Decentralized Voting System with Smart Contracts

A blockchain-based decentralized voting system developed using Solidity smart contracts as part of the DecodeLabs Blockchain Technology Internship — Project 2.

The project demonstrates how smart contracts can be used to manage proposals, authorize voters, prevent double voting, count votes, enforce basic access control, and dynamically determine a winning proposal.

---

## Project Overview

Traditional voting systems usually depend on centralized authorities to manage voters, votes, and results.

This project explores how blockchain smart contracts can automate these rules directly on-chain.

The Voting smart contract allows:

- Proposal creation
- Voter authorization
- Secure vote casting
- One-person-one-vote enforcement
- Vote counting
- Double-voting prevention
- Owner-based access control
- Dynamic winner calculation

The project was developed and tested using Solidity and Remix IDE.

---

## Project Objectives

The main objectives of this project are:

1. Develop a smart contract for proposal submission and vote casting.
2. Implement voter authorization.
3. Prevent voters from voting more than once.
4. Maintain voting state on-chain.
5. Implement basic access control using an owner account.
6. Dynamically calculate the winning proposal using conditional logic.

---

## Technologies Used

- Solidity
- Remix IDE
- Ethereum-compatible Virtual Machine (Remix VM)
- Smart Contracts
- Blockchain
- Git
- GitHub

---

## Smart Contract Structure

The project contains a single Solidity smart contract:

```text
Voting
