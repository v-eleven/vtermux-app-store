# vTermux 应用商店

英文名称为 vTermux App Store，简称 `vts`，可以通过它安装、卸载、查看应用商店内的所有 Termux 软件。

`vts` 的灵感来源于 `apt, yum, npm, yarn, composer, pip` 等众多的软件包(依赖)管理器，它致力于为人们提供友好完善的软件管理体验。

由于国内的 Termux 软件生态仍处于荒漠时期，所以，本项目的愿景是：和互联网世界里所有热爱 Termux 的 Geek 们，一起构建国内的 Termux 软件生态，拥抱 Termux，拥抱技术，拥抱自由 :-)

## 安装

打开 Termux，输入以下指令并执行，即可完成安装。

```shell
bash -c "$(curl -sSL https://raw.githubusercontent.com/v-eleven/vtermux-app-store/master/install.sh)"
```

## 使用

```
vts install <软件名称>   ---   安装(更新)指定软件
vts i <软件名称>         ---   安装(更新)指定软件
vts remove <软件名称>    ---   卸载指定软件
vts r <软件名称>         ---   卸载指定软件
vts look <软件名称>      ---   查看指定软件详细信息
vts list                ---   列出所有已安装软件
vts help                ---   查看帮助信息
```

## 版权声明

本项目非一般性开源项目，项目内所有资源的版权均为其开发者所有，未经其开发者许可，不得自由复制、分发、修改、商用。特此声明。
