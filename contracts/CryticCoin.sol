import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract Ownable{

    address owner;

    modifier onlyOwner(){
        require(owner == msg.sender);
        _;
    }


}

contract CryticCoin is ERC20, Ownable{

    uint INITIAL_SUPPLY = 100 ether;
    uint _totalSupply;
    address payable wallet;

    function constuctor() public{
        owner = msg.sender;
    }

    function mint(address addr, uint value) public onlyOwner{
        _mint(addr, value);
    }

    function buy() public payable{
        _mint(msg.sender, msg.value/2);

        wallet.transfer(msg.value/2);
    }

    
    function withdrawBalance() public{
        uint balance = balanceOf(msg.sender);
        (bool ret, bytes memory mem) = msg.sender.call.value(balance)("");
        if(!ret){
            revert();
        }
        _burn(msg.sender, balance);
    }   

}

