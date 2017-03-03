#设置后面的SQL语句所用的字符编码
SET NAMES UTF8;
#删除数据库
DROP DATABASE IF EXISTS bbs;
#重新创建数据库
CREATE DATABASE bbs CHARSET=UTF8;
#进入数据库
USE bbs;

#创建用户表
CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  regTime BIGINT	#项目使用大整数代替DATE
);

#插入三行记录
INSERT INTO user VALUES(NULL,'tom','123','123413412343');
INSERT INTO user VALUES(NULL,'mary','456','113423431344');
INSERT INTO user 
VALUES(NULL,'king','789','134134343333');

#查询出所有记录
SELECT  *  FROM user;
#查询出用户tom的所有信息
SELECT  *  FROM user WHERE uname='tom';