- run a pool
```
cargo run --release -- --operator aleo1harukzrnc7jfplxtn6005rs4xeglkrvvv0uwy56yzm0kkx062s9q3tdk8q --verbosity 1
cargo run --release -- --prover aleo145gftncgsrluj3hdsw4k9uxz4y6ynkaddlxgn79v2ahqxdrywyfqvurv40 

PC1 (main node): cargo run --release -- --operator ${MINER_ADDRESS} --trial --verbosity $VERBOSITY --node $LOCAL_BIND_ADDR_PORT
PC2 (miners): cargo run --release -- --prover ${MINER_ADDRESS} --pool $OPERATOR_IP_PORT --trial --verbosity $VERBOSITY --node $LOCAL_BIND_ADDR_PORT
```
-  Is that Ok to use the same aleo address for Operator and Prover?
> https://discord.com/channels/700454073459015690/836382809035636737/928690015402356757

```