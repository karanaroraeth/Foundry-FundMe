// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {MockV3Aggregator} from "../test/mock/MockV3Aggregator.sol";
import {Script} from "forge-std/Script.sol";

contract HelperConfig {
  //If we are on a local envil, we deploy mocks
  // otherwise, grab the existing address from the live network
}
