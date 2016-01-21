-- 设置SQL*Plus默认编辑器
define _editor=vim

-- 默认打开DBMS_OUTPUT，另外，将默认缓冲区大小设置尽可能大
set serveroutput on size unlimited

-- 输出文件时，去除文本行两端的空格，且行宽不定，如果为OFF，则输出的文本行宽度等于所设置的linesize
set trimspool on

-- 设置选择LONG和CLOB列时显示的默认字节数
set long 5000

-- 设置SQL*Plus显示的文本行宽为100个字符
set linesize 100

-- pagesize控制SQL*Plus多久打印一次标题，这里设置一个很大的数
set pagesize 9999

-- 设置由AUTOTRACE得到的解释计划输出（explain plan output）的默认宽度，a80通常足以放下整个计划
column plan_plus_exp format a80

-- 告诉SQL*Plus取得global_name列中最后一个值，并将这个值赋给替换变量gname，接下来从数据库中选择global_name，并与登录用户名连接，最后得到SQL*Plus的提示符
set termout off
define gname=idle
column global_name new_value gname
select lower(user) || '@' || substr( global_name, 1, decode( dot, 0, length(global_name),dot-1) ) global_name from (select global_name, instr(global_name,'.') dot from global_name );
set sqlprompt '&gname> '
set termout on
