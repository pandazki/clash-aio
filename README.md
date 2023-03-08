# ALL-IN-ONE clash server

## Features
- auto update clash config
- zero config
- docker compose on-line deploy

## Usage
```bash
cp .env.example .env
# set RAW_SUB_ULR="your clash subscription url"

docker compose up -d 

# view control panel: http://localhost:9090/ui
# or set proxy to http://localhost:7890 / socks5://localhost:7891
# export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5://127.0.0.1:7891
```


## Dependencies
- [clash](https://github.com/Dreamacro/clash)
- [control panel](https://github.com/haishanh/yacd)
- [subconverter](https://github.com/tindy2013/subconverter)