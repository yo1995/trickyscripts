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

title Ŀ¼�����ļ����ݳ���---��� �������
echo �Ѿ���� ��� @ 5:55 2008-11-12 �������
    
rem �����ǹ���Ŀ¼���ļ�������


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


rem д�����ں�ʱ��
date/t >TREE.TXT
time/t >>TREE.TXT
rem vol ��ʾ���̾������кŲ�д��
vol >>"tree and file.txt"
rem ֻ���ļ�д��
TREE >>TREE.TXT


rem д�����ں�ʱ��
date/t >"tree and file.txt"
time/t >>"tree and file.txt"
rem vol ��ʾ���̾������кŲ�д��
vol >>"TREE.TXT"
rem ��Ŀ¼���ļ�һ��д��
tree/f >>"tree and file.txt"
echo �������
pause

