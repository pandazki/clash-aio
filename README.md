# Lazy Clash

[中文](README-zh.md) [English](README.md)

Lazy Clash is a one-click deployment solution for Clash based on Docker Compose. It can help you quickly set up a Clash proxy service with automatically updated subscriptions. —— by ChatGPT

Personal usage scenarios:

- Quick and painless deployment on router/NAS devices
- Quick deployment on servers for temporary use, and can be deleted after use.

## Features

- Automatic update Clash subscription (based on Clash proxy-providers)
- Unified proxy service based on subconverter format and automatic grouping.
- On-line deployment with Docker Compose
- Embedded YACD web control panel

## Usage
0. Clone this repo

```bash
git clone https://github.com/pandazki/clash-aio.git
```

1. Set your clash subscription url in `.env` file or mount your config file to `/root/.config/clash/config.yaml`

```bash
cd clash-aio
cp .env.example .env
# Set RAW_SUB_URL="your clash subscription url" in .env
```

or

```docker-compose
...
    volumes:
      - /path/to/your/config.yaml:/root/.config/clash/config.yaml
...
```

2. Run docker-compose

```bash
docker compose up -d
```

3. (Optional) Managment

View control panel: `http://[server-ip]:9090/ui?hostname=[server-ip]`

4. (Optional) Export proxy

```bash
export https_proxy=http://[server-ip]:7890
export http_proxy=http://[server-ip]:7890
export all_proxy=socks5://[server-ip]:7890
```

## Dependencies

- [Clash](https://github.com/Dreamacro/clash)
- [YACD Control Panel](https://github.com/haishanh/yacd)
- [Subconverter](https://github.com/tindy2013/subconverter)

## FAQ

- Why emmbedded web control panel?

  In many usage scenarios, there are no conditions to use a public control panel (such as [yacd.haishan.me](http://yacd.haishan.me/)) to manage Clash.If conditions permit, you can still use your own management tool.

- What should I do if I fail to build the project because I can't access Dockerhub / Github on the server?

  This project in itself exists for engineering purposes, and as a project contributor, I cannot provide dependencies that can be used in various complex internal and external network environments. I suggest that you fork this project and modify the Dockerfile and docker-compose yourself, pointing the dependencies to an accessible image source.