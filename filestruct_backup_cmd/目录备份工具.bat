if exist 1.txt (
ren "1.txt" 2.txt
del 1.txt
del 3.txt
   ) else (
    if exist 2.txt (
     ren "2.txt" 3.txt
      del 1.txt
      del 2.txt
      ) else (
        DATE /t >1.txt
        TIME /T >>1.TXT
        del 2.txt
        del 3.txt
        )
    )

title 目录树和文件备份程序---李春明 整理而成
echo 已经完成 李春明 @ 5:55 2008-11-12 整理而成
    
rem 下面是关于目录和文件的整理


if exist OLD OLD TREE.TXT (
del "OLD OLD TREE.TXT"
   )
if exist OLD TREE.TXT (
rename "OLD TREE.TXT" "OLD OLD TREE.TXT"
   )
if exist TREE.TXT (
rename "TREE.TXT" "OLD TREE.TXT"
   )
if exist OLD OLD TREE AND FILE.TXT (
del "OLD OLD TREE AND FILE.TXT"
   )
if exist OLD TREE AND FILE.TXT (
rename "OLD TREE AND FILE.TXT" "OLD OLD TREE AND FILE.TXT"
   )
if exist TREE AND FILE.TXT (
rename "TREE AND FILE.TXT" "OLD TREE AND FILE.TXT"
   )


rem 写入日期和时间
date/t >TREE.TXT
time/t >>TREE.TXT
rem vol 显示磁盘卷标和序列号并写入
vol >>"tree and file.txt"
rem 只把文件写入
TREE >>TREE.TXT


rem 写入日期和时间
date/t >"tree and file.txt"
time/t >>"tree and file.txt"
rem vol 显示磁盘卷标和序列号并写入
vol >>"TREE.TXT"
rem 把目录和文件一起写入
tree/f >>"tree and file.txt"
echo 备份完毕
pause

