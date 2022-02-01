const { assert } = require('chai');
const { default: Web3 } = require('web3');
//const { Item } = require('react-bootstrap/lib/Breadcrumb');

const Token = artifacts.require("Token");

require('chai')
.use(require('chai-as-promised'))
.should()

contract ('EthSwap', ([deployer, investor]) => {
    describe('', async() => {
        it('contract has a name', async() => { })
    })
})