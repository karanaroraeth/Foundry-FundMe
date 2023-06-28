//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";
import {DeployFundMe} from "../script/DeployFundMe.s.sol";

contract FundMeTest is Test {
  FundMe fundMe;

  function setUp() external {
    // fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    DeployFundMe deployFundMe = new DeployFundMe();
    fundMe = deployFundMe.run();
  }

  // Basically it means the fundMe variable of type FundMe is going to be a new FundMe contract

  function testMinimumUSD() public {
    assertEq(fundMe.MINIMUM_USD(), 5e18); //We declared Fund Me as state variable to use in contracts as we imported it from other contract
    // we're taking the MINIMUM_USD and going to assert if it equal to 5*10*18 as defined in FundMe contract before

    console.log("Yes it is equal to the given value");
  }

  function testOwner() public {
    assertEq(fundMe.i_owner(), msg.sender);
    console.log(address(this));
    console.log(msg.sender);
  }

  function testPriceFeed() public {
    uint256 version = fundMe.getVersion();
    assertEq(version, 4);
  }
}
