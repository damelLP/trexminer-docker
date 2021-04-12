# T-Rex NVIDIA GPU miner image

## Running this image
```sh
docker run --rm --runtime=nvidia -d --name miner damel/trexminer:latest
```

## Configuring the image for your own pool

write a .env file
```
USER_ADDR=<your_public_wallet_addr>
POOL_SERV=stratup+tcp:<mining_pool_url><port>
ALGO=<mining_algo>
...
```

Then run as follows

```
docker run --rm --runtime=nvidia -d --name miner damel/trexminer:latest --env-file=/path/to/your/envfile
```

Buy me a coffee:

ETH: 0x72a5a4c56d5e91343fbb90089040312462a3568e
RVN: RSgqkahBHG6Yo8xWVkDBHMHg4Sk2Sx9vWf
