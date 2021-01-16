# perf-loader

## How to run

change configuration for agent.conf file in __agent.conf

``` sh
docker run -it -v $(pwd)/__agent.conf:/agent/ngrinder-agent/__agent.conf --name ngrinder-agent [image] sh
```