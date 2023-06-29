# Foundry-FundMe
#About

This is a Foundry FundMe project created while learning the foundry course from 
Patrick Collin's Blockchain Development Course]([Learn Solidity, Blockchain Development, & Smart Contracts | Powered By AI - 
https://www.youtube.com/watch?v=sas02qSFZ74
## Requirements

- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
If you can run `git --version` and you see a response like `git version x.x.x` It means that it is working correctly.
- [foundry](https://getfoundry.sh/)
If you can run `forge --version` and you see a response like `forge 0.2.0 ` It means that it is working correctly.


## Quickstart

```
git clone https://github.com/karanaroragithub/Foundry-FundMe/
cd Foundry-FundMe
forge build
```

# Usage

Deploy:

```
forge script scripts/DeployFundMe.s.sol
```

## Testing

```
forge test
```

or 

```
// Only run test functions matching the specified regex pattern.

forge test --match-test testFunctionName
```

or

```
forge test --fork-url $SEPOLIA_RPC_URL
```

### Test Coverage

```
forge coverage
```


# Deployment to a testnet or mainnet

1. Setup environment variables

You'll want to set your `SEPOLIA_RPC_URL` and `PRIVATE_KEY` as environment variables. You can add them to a `.env` file, similar to what you see in `.env.example`.

2. Deploy

```
forge script script/DeployFundMe.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $ETHERSCAN_API_KEY
```

## Scripts

After deploying to a testnet or local net, you can run the scripts. 

Using cast deployed locally example: 

```
cast send <FUNDME_CONTRACT_ADDRESS> "fund()" --value 0.1ether --private-key <PRIVATE_KEY>
```

or
```
forge script script/FundFundMe.s.sol --rpc-url sepolia  --private-key $PRIVATE_KEY  --broadcast
```

### Withdraw

```
cast send <FUNDME_CONTRACT_ADDRESS> "withdraw()"  --private-key <PRIVATE_KEY>
```

## Estimate gas

You can estimate how much gas things cost by running:

```
forge snapshot
```

And you'll see an output file called `.gas-snapshot`


# Formatting


To run code formatting:
```
forge fmt
```


# Thank you!

If you appreciated this, feel free to follow me 

https://twitter.com/KaranAroraETH
