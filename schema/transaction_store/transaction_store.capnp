@0x9c2ddc7cabb4245b; # unique file ID, generated by `capnp id`

using Common = import "../common.capnp";
using Protocol = import "../protocol/protocol.capnp";
using Json = Common.Json;

$import "/capnp/c++.capnp".namespace("koinos::transaction_store");

using Go = import "/go.capnp";
$Go.package("transaction_store");
$Go.import("koinos/rpc/transaction_store");

struct TransactionItem {
   transaction      @0 :Protocol.Transaction;
   containingBlocks @1 :List(Data) $Json.hex;
}
