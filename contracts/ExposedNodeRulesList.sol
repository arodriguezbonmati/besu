pragma solidity 0.5.9;

import "./NodeRulesList.sol";


contract ExposedNodeRulesList is NodeRulesList {

    function _calculateKey(bytes32 _enodeHigh, bytes32 _enodeLow) public pure returns(uint256) {
        return calculateKey(_enodeHigh, _enodeLow);
    }

    function _size() public view returns (uint256) {
        return size();
    }

    function _exists(bytes32 _enodeHigh, bytes32 _enodeLow) public view returns (bool) {
        return exists(_enodeHigh, _enodeLow);
    }

    function _add(bytes32 _enodeHigh, bytes32 _enodeLow, bytes16 _ip, uint16 _port) public returns (bool) {
        return add(_enodeHigh, _enodeLow, _ip, _port);
    }

    function _remove(bytes32 _enodeHigh, bytes32 _enodeLow, bytes16 _ip, uint16 _port) public returns (bool) {
        return remove(_enodeHigh, _enodeLow, _ip, _port);
    }
}
