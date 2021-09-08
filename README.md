# baidu-submit.sh

使用API提交方式向百度搜索主动推送URL的脚本。

使用方法：
1. 复制 `.env.sample` 到 `.env`
2. 编辑 `.env` 里的内容，修改成自己的网站和token值
3. 执行脚本

```sh
./baidu-submit.sh
```

添加到定时任务，可以每天定时提交。
```sh
crontab -e

# 添加任务，提交时间自己随意
0 12 * * * /path-to/baidu-submit.sh >> /path-to/baidu-submit.log 2>&1
0 23 * * * /path-to/baidu-submit.sh >> /path-to/baidu-submit.log 2>&1
```
