pragma solidity ^0.4.0;
import "SafeMath";  //for using sub
contract MyToken
{
using SafeMath for uint;
string constant public name = "srijith";
string constant public symbol = "SRK";
uint constant public decimal = 18;  //equivalent to wei
uint constant public _tokenSupply = 1000;
mapping(address => uint) balances;
mapping(address => mapping(address => uint) allowed  //assigning delegates with some of our tokens
event Transfer(address indexed from, address indexed to, uint tokens);
event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
function MyToken() public         //assigning tokens to the deployer of smart contract
{
balances[msg.sender] = _totalSupply;
function totalSupply() public pure returns (uint)
{
return _tokenSupply;
}

function balanceOf(address tokenOwner) public constant returns (uint balance)
{
return balances[tokenOwner];        //gives the balance of the token address
}

function allowance(address tokenOwner, address spender) public constant returns (uint remaining)
// using this we could give some tokens to others and allow him to spend
{
return allowed[tokenOwner][spender];
}

function transfer(address to, uint tokens) public returns (bool success)
{
require(tokens > 0 && balance[msg.sender] >= tokens);  // tokens can be transferred only when his existing balance has that ammount
// ignorance of spamming is also considered
balances[msg.sender] = balances[msg.sender].sub(tokens);  //for deduction of amount of sender after transferring
// sub used to prevent overflow
balances[to] = balances[to].add[tokens];// to add money to the reciever
Transfer[msg.sender, to, tokens];  //events
return true;
}

function approve(address spender, uint tokens) public returns (bool success);
// approves the delegates to allow them to transfer some amount of money only
{
allowed[msg.sender][sender] = tokens;
Approval(msg.sender, spender, tokens);
return true;
}

function transferFrom(address from, address to, uint tokens) public returns (bool success);
{
require(tokens > 0 && balances[from] >= tokens;
balances[from] = balances[from].sub(tokens);
allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
// depreciating the value of the token creator who assigned delegates
balances[to] = balances[to].add[tokens];
Transfer(from, to, tokens);  //events
return true;
}
}
