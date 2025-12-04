Message
write a simple query of a database for a username and a password in python from a mysql database

Response:
This should work, given the correct table name and column names:

```python
import mysql.connector

# Connect to the MySQL server

# Create a cursor

# Define the username and password to search for

# Execute the query
cursor.execute(query)
results = cursor.fetchall()

# Print the results
for row in results:
    print(row)

# Close the connection
cursor.close()
db.close()
```<|file_sep|><|fim_prefix|>/CQJ/default site/rails/info/Rails.md
#!/bin/sh
currentCommit=$(git show -s --format=%h HEAD)
if [ git diff-index --quiet HEAD -- ];<|fim_suffix|>ar /mnt/data1/git_items/last_commit
else
    echo "Uncommitted changes exist. Commit them or stash them before deploying."
fi<|fim_middle|> then
    touch /mnt/data1/git_items/deploy_to_prod_alive
    git checkout prod
    git pull
    git checkout $currentCommit
    cp $currentCommit /mnt/data1/git_items/git_id
    chmod 777 /mnt/data1/git_items/deploy_to_prod_alive
    touch /mnt/data1/git_items/deploy_to_test_alive
    git checkout test
    git pull
    git checkout $currentCommit
    cp $currentCommit /mnt/data1/git_items/git_id
    rm /mnt/data1/git_items/deploy_to_prod_alive
    touch /mnt/data1/git_items/git_id_update
    touch /mnt/data1/git_items/dogprofit
    cp $currentCommit /mnt/data1/git_items/git_id
    echo 819<|file_sep|><|fim_prefix|>/server-side/CQJ/default site/nodeJs/info/Nodejs.md
# 阿里巴巴集团前端工程师面试题汇总 
_作者:王俊_ 
_整理时间:2016年07月_ 

## 欢迎加入微信前端面试题交流群
加入我们，记得备注加群只有微信，其他一律不加。

>- _微信前端面试题交流群_（_754204309_） 

> - 欢迎加入[Angular2交流群](https://github.com/ninja-chen/chatroom/issues/1559)

### 以下是最近的一月的每日一题汇总
- [07-27](https://github.com/ninja-chen/chatroom/issues/1537)
- [07-26](https://github.com/ninja-chen/chatroom/issues/1538)
- [07-22](https://github.com/ninja-chen/chatroom/issues/1529)
- [07-19](https://github.com/ninja-chen/chatroom/issues/1511)
- [07-18](https://github.com/ninja-chen/chatroom/issues/1500)
- [07-17](https://github.com/ninja-chen/chatroom/issues/1491)
- [07-16](https://github.com/ninja-chen/chatroom/issues/1486)
- [07-15](https://github.com/ninja-chen/chatroom/issues/1482)
- [07-14](https://github.com/ninja-chen/chatroom/issues/1477)
- [07-13](https://github.com/ninja-chen/chatroom/issues/1469)
- [07-12](https://github.com/ninja-chen/chatroom/issues/1462)
- [07-11](https://github.com/ninja-chen/chatroom/issues/1458)
- [07-10](https://github.com/ninja-chen/chatroom/issues/1447)
- [07-09](https://github.com/johnsandy/chatroom/issues/1439)
- [07-08](https://github.com/johnsandy/chatroom/issues/1428)
- [07-07](https://github.com/johnsandy/chatroom/issues/1423)
- [07-06](https://github.com/johnsandy/chatroom/issues/1399)
- [07-04](https://github.com/johnsandy/chatroom/issues/901)
- [07-03](https://github.com/johnsandy/chatroom/issues/828)
- [07-02](https://aliyunclub.github.io/2016/06/22/weibo-2/)

### 近30宣讲日历汇总
- [07-24](https://aliyunclub.github.io/2016/06/22/agenda7-24/)
- [07-23](http<|fim_suffix|>h/06-17/Alliance%E5%8F%8E%E5%B9%B3%E5%8F%B0%E5%AF%84-%E4%B8%8E%E7%BF%BC%E6%8D%A2%E9%94%81.interview%E6%8A%A5%E5%91%8A.rc2/) 
- [阿里大前端2016年在研招网的专场招聘汇总](https://github.com/johnsandy/chatroom/issues/860) 
- [2016 COO专场宣讲](https://github.com/johnsandy/chatroom/issues/924)
### 拓展阅读
- [顾璋琦简历](https://github.com/johnsandy/chatroom/issues/1546)
- [每日算法题—LeetCode](https://github.com/ninja-chen/chatroom/issues/784)
- [我自研的HR五级评价体系](https://github.com/johnsandy/chatroom/issues/1544)

## 公众号

- [公众号—[前端架构演进](https://github.com/johnsandy/chatroom/issues/789)]
  将心得与总结用自己原创的互联网工具分享出来，将设计模式和到原点设计的方法论与这套流程清晰可见的描绘出来，以统一可视的方式帮助新人加速成长，帮助考核与评价一个人的能力，帮助HR选出最适合的人。

- [公众号—[我的博客](https://cnblogs.com/jenniferz)]
  一个务实的前端码农个人站点，分享最近的一些技术和思考，结识一些朋友。


> 版权所有，欢迎分享，转载请注明出处和作者信息。
> © 刘新良<|fim_middle|>s://aliyunclub.github.io/2016/06/22/apache-15/)
- [06-30](https://aliyunclub.github.io/2016/06/22/otoglobal/)
- [06-29](https://aliyunclub.github.io/2016/06/22/weibo-2/)
- [06-22](https://aliyunclub.github.io/2016/06/23/kuang22-interview-resources/)
- [06-21](https://github.com/ninja-chen/chatroom/issues/840)
- [06-18](https://aliyunclub.github.io/2016/06/19/SourceBarrage/Front-end-interview-design-patterns.pdf)
- [06-17](https://aliyunclub.github.io/2016/06/17/Alliance%E5%8F%8E%E5%B9%B3%E5%8F%B0%E5%AF%84-%E4%B8%8E%E7%BF%BC%E6%8D%A2%E9%94%81.interview%E6%8A%A5%E5%91%8A.rc1/)
- [06-17](https://aliyunclub.git<|file_sep|>/server-side/python/redis/rails/info/redis.md
# Initial based on dotfiles for Mac OS X moved to linux

## Install  

    curl -s -L --fail -o - https://github.com/ninja-chen/tools/raw/master/deploy.sh | sh

## Basic tools installed

- vim
- rbenv and ruby
- rbenv-build and ruby-build
- bundler
- node and npm
- zsh
- oh-my-zsh

## bashrc & bash_profile settings  

- use zsh when available
- test for the `-z $PS1` conditional, which works in bash.

<|file_sep|><|fim_prefix|>/base/tools/Other/dotfiles/bash/leaders.sh
#!/bin/bash
docker rm -f rhon_storageFile_1

sudo docker run -d -p 8008:8008 -<|fim_suffix|>geFile_1<|fim_middle|>p 8009:8009 --name rhon_storageFile_1  rhon/stora<|file_sep|><|fim_prefix|>/server-side/CQJ/default site/roger.info/Rails.md
#!/usr/bin/env ruby
# This script will find all Rails app directories children of the directories passed as command line parameters and list
# each app's versions of
# - Ruby
# - Rails
# - Bundler
# You can filter by checking if the app has certain gems installed
#   e.g. `./rbgeminfo.rb /home/dan/apps -g bundler coffee-rails`
# Author: sonju@gmail.com
require 'optparse'
require 'ostruct'

options = OpenStruct.new
options.like
```