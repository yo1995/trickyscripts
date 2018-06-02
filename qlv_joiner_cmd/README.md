## Description

A simple script to join the cache files that compose the full .qlv file (Tecent Encrypted AVC-based video format, meta header shows as encv decoder).

DO NOT violate the copyright, FYI!

## Versions

### 20180601

- added first version. works fine with mine.

## Usage

![](![cover](https://raw.githubusercontent.com/yo1995/trickyscripts/master/qlv_joiner_cmd/exemple.gif)

0. try to get the un-encrypted .tdl cache with 腾讯视频 QQLive 电脑版

	Note: the latest versions in 2018 seems to encrypt the cache files as well. Hence you need to find a obsolete version back in 2016 or earlier. I used the version 10.0.118.0 which has a digital signature at 201706. Make use of your searching ability! ;-)

1. copy the script into the folder of the cache file. e.g. C:/[md5hash]/vodcache/[md5hash]

2. double click or run with commandline, whichever you like.

3. you will receive a file named Video001.mp4 under current folder. unfortunately I do not have time to deal with the time sequence of the videos, so for longer ones you need to re-order them manually. for videos within approx. 5 minutes (once I get 8 actually), you just have it!

4. [optional] concatenate pieces. after manually ordered, use whatever tool you like to do that. ffmpeg is great.

简而言之就是从旧版本拿到缓存文件，bat转换为视频后手动排序，最后拼接即可得到原视频。
.qlv格式似乎是加密的格式，猜测与AVC差距并不大，因为最终文件大小相差无几。可惜没有API文档是无从知晓具体改动了。

## Keywords

easy | tool | 腾讯视频 | qlv | encv | Tecent | 
