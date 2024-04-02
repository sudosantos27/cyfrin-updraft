// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.20;

// @audit-info unused import
// it's bad practice to edit live code for tests/mocks, we must remove the import from `MockFlashloanReceiver.sol`
import { IThunderLoan } from "./IThunderLoan.sol";

/**
 * @dev Inspired by Aave:
 * https://github.com/aave/aave-v3-core/blob/master/contracts/flashloan/interfaces/IFlashLoanReceiver.sol
 */
interface IFlashLoanReceiver {
    // qanswered is the token, the token that's being borrowed?
    // a yes
    // @audit where the natspec?
    // qanswered amount is the amount of tokens?
    // yes
    function executeOperation(
        address token,
        uint256 amount,
        uint256 fee,
        address initiator,
        bytes calldata params
    )
        external
        returns (bool);
}
