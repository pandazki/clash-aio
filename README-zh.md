# Clash 懒人全家桶

[中文](README-zh.md) [English](README.md)

## 概述

Clash 懒人全家桶是一个基于 Docker Compose 的 Clash 一键部署方案，它可以帮助你快速搭建一个自定更新订阅的 Clash 代理服务。 —— by ChatGPT

个人使用场景
- 路由器/Nas 无痛快速部署
- 服务器上快速部署临时使用，用完即删

## 功能

- 基于 Clash 的 proxy-providers 自动更新订阅
- 基于 subconverter 统一代理服务格式和自动分组
- 内置 YACD Web 控制台
- 使用 Docker Compose 一行命令完成部署

## 使用方法

0. 克隆代码

```bash
git clone https://github.com/pandazki/clash-aio.git
# 如果遇到困难的话
# git clone https://ghproxy.com/https://github.com/pandazki/clash-aio.git
```

1. 在 .env 文件中设置 Clash 订阅 URL

```bash
cd clash-aio
cp .env.example .env
# 在 .env 文件中设置 RAW_SUB_URL="你自己的 Clash 订阅"
```

2. 运行 docker-compose

```bash
docker compose up -d
```

3. (可选) 管理代理

查看控制面板: `http://[服务器IP]:9090/ui?hostname=[服务器IP]`

4. (可选) 设置代理环境变量

```bash
export https_proxy=http://[服务器IP]:7890
export http_proxy=http://[服务器IP]:7890
export all_proxy=socks5://[服务器IP]:7890
```

## 依赖

- [Clash](https://github.com/Dreamacro/clash)
- [Web 控制台](https://github.com/haishanh/yacd)
- [Subconverter](https://github.com/tindy2013/subconverter)

## 常见问题

- 为什么内置 Web 控制台？

  在许多使用场景中，并没有条件使用公网的控制平台（比如 [yacd.haishan.me](http://yacd.haishan.me/)）来管理 Clash。如果条件允许，你依旧可以使用自己的管理工具来控制 Clash。

- 我在服务器上无法访问 Dockerhub / Github，项目构建失败怎么办？

  本身该项目是为了工程存在的，作为项目贡献者我无法提供在各种复杂内外网环境均可使用依赖。建议你 Fork 该项目，并在自行修改 Dockerfile 和 docker-compose，将依赖指向可以访问的镜像源。