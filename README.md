# baidu-submit.sh

> 使用 API 提交方式向百度搜索主动推送 URL 的 shell 脚本

## 使用方法 1

0. Clone 这个项目到本地
1. 复制 `.env.sample` 到 `.env`
1. 编辑 `.env` 里的内容，修改成自己的网站和 token 值

```sh
SITE_URL=https://example.com
SITEMAP_URL=https://example.com/sitemap.xml
TOKEN=ABCDEFG1234
```

关于如何获取 token 点[这里](https://ziyuan.baidu.com/college/courseinfo?id=267&page=2#h2_article_title14)。

3. 执行脚本，即完成提交

```sh
./baidu-submit.sh
```

4. 添加到定时任务，可以每天定时提交。

```sh
crontab -e

# 添加任务，提交时间自己随意
0 12 * * * /path-to/baidu-submit.sh >> /path-to/baidu-submit.log 2>&1
0 23 * * * /path-to/baidu-submit.sh >> /path-to/baidu-submit.log 2>&1
```

## 使用方法 2 （强烈推荐）

使用 **Github Actions** 提交，不需要在本地配置任何东西。
具体方法参考 [baidu-submit-github-action](https://github.com/PipecraftNet/baidu-submit-github-action)。

## Related

- [baidu-submit-github-action](https://github.com/PipecraftNet/baidu-submit-github-action) - 使用 API 提交方式向百度搜索主动推送 URL 的 **Github Actions** 模版

## 其他类似工具

- https://github.com/jalenchuh/url-submit (python)
- https://github.com/wansho/baidu-url-submit (python)
- https://github.com/Gaoyongxian666/baidu_submit (python)

## License

Copyright (c) 2021 [Pipecraft][my-url]. Licensed under the [MIT license][license-url].

## >\_

[![Pipecraft](https://img.shields.io/badge/https://-pipecraft.net-brightgreen)](https://www.pipecraft.net)
[![PZWD](https://img.shields.io/badge/https://-pzwd.net-brightgreen)](https://pzwd.net)

[my-url]: https://www.pipecraft.net
[license-url]: LICENSE
