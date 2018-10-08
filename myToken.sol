pragma solidity ^0.4.0;
contract MyToken
{
string constant public name = "srijith";
string constant public symbol = "SRK";
uint constant public decimal = 18;  //equivalent to wei
uint constant public _tokenSupply = 1000;
mapping(address => uint) balances;

    function balanceOf(address tokenOwner) public constant returns (uint balance);

    function allowance(address tokenOwner, address spender) public constant returns (uint remaining);

    function transfer(address to, uint tokens) public returns (bool success);

    function approve(address spender, uint tokens) public returns (bool success);

    function transferFrom(address from, address to, uint tokens) public returns (bool success);


    event Transfer(address indexed from, address indexed to, uint tokens);

    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);

function totalSupply() public pure returns (uint)
{
return _tokenSupply;
}
function balanceOf(address tokenOwner) public constant returns (uint balance)
{
return balances[tokenOwner];        //gives the balance of the token address
}

