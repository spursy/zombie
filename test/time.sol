pragma solidity ^0.4.23;

contract time {
    uint lasttimestamp;

    function getLastTimeStamp() internal {
        lasttimestamp = now;
    }
    function fiveMinutesHavePasted() public view returns(bool){
        if (now > lasttimestamp + 5 minutes) {
            return true;
        } else {
            return false;
        }
    }
}