<?php
//接收客户端提交的uname
$uname = $_REQUEST['uname'];

//连接到数据库服务器
$conn = mysqli_connect('127.0.0.1', 'root', '', 'bbs');

//提交SQL命令
$sql = "SET NAMES UTF8";
mysqli_query($conn, $sql);
$sql = "SELECT * FROM user WHERE uname='$uname'";
$result = mysqli_query($conn,$sql);

//查看执行结果，向客户端进行输出
$row = mysqli_fetch_assoc($result);
if($row){	//查询结果集中有数据
	echo "cunzai";
}else {		//查询结果集中一行数据都没有
	echo "bucunzai";
}
