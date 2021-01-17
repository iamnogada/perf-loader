# perf-loader

## How to build

``` sh
sudo docker build -t skicr.azurecr.io/perf-ngrinder/agent:3.5.3 .
```

## How to run

change configuration for agent.conf file in __agent.conf

``` sh
sudo docker run -it -v $(pwd)/__agent.conf:/agent/ngrinder-agent/__agent.conf --name ngrinder-agent \
  --add-host skgcvrd.kubepia.net:10.242.18.125 \
  skicr.azurecr.io/perf-ngrinder/agent:3.5.3
```