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

# view control panel: http://[server-ip]:9090/ui?hostname=[server-ip]
# or set proxy to http://[server-ip]:7890 / socks5://[server-ip]:7891
# export https_proxy=http://[server-ip]:7890;export http_proxy=http://[server-ip]:7890;export all_proxy=socks5://[server-ip]:7891
```

## Dependencies
- [clash](https://github.com/Dreamacro/clash)
- [control panel](https://github.com/haishanh/yacd)
- [subconverter](https://github.com/tindy2013/subconverter)