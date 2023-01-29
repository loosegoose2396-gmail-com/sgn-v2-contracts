// SPDX-License-Identifier: GPL-3.0-only

pragma solidity >=0.8.9;

library MessageStruct {
    enum MessageType {
        ExternalMessage,
        InternalMessage
    }

    struct Message {
        MessageType messageType;
        string senderName;
        // receiver is UniswapMultiMsgReceiver contract on destination chain
        address multiMsgReceiver;
        uint64 dstChainId;
        uint32 nonce;
        // target is uniswap v3 contract on destination chain
        address target;
        bytes callData;
    }
}