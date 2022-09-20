## Solidity One Liners

This is a dumb utility to run Solidity expressions from the command line, for instance:

```shell
$ sol 1 + 1
2

$ sol 'type(uint256).max'
115792089237316195423570985008687907853269984665640564039457584007913129639935

$ sol 'type(uint256).max + 1'
Error:
Arithmetic over/underflow

$ sol 'Ownable(0xFF9C1b15B16263C61d017ee9F65C50e4AE0113D7).owner()'
0xf296178d553c8ec21a2fbd2c5dda8ca9ac905a00

$ FOUNDRY_ETH_RPC_URL=https://polygon-rpc.com \
  sol 'IERC721Metadata(0xf388Ef0fcF637D32156f49424784AA773484963f).tokenURI(1)'
data:application/json;base64,...

$ sol 'ECDSA.recover(0x73b5..2d55, hex"ed46..9b1c")'
```

As long as you can `console2.log` it, you can `sol` it!


## Getting started

1. [Install Foundry](https://book.getfoundry.sh/getting-started/installation)
2. Clone this repository: `git clone --recurse-submodules git@github.com:karmacoma-eth/solidity-one-liners.git`
3. Optionally, add `bin/sol` to the path or create an alias for it

## How it works

This tool generates a forge script that automatically imports all the interfaces in openzeppelin-contracts, as well as solidity files under `include/`. Then in the `run()` function of that script, it invokes `console2.log` on the expression passed as arguments

Have I mentioned that this tool is very dumb? If it gives you grief, you can run with with `DEBUG_SOL=1` to see the script that it generates as well as the full output from `forge script`.

