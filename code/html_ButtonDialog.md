````html5
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<title>講亁話</title>
	<script type = "text/javascript">
		function startTimer()
		{
			setTimeout("alert('時間到了哦，小可愛')",1000);
		}
	</script>
</head>
<body>
	<form>
		<input type="button" value ="按我吧" onClick="alert('説明不夠清楚，我的（嗶——）卡住了！')">
		<br>
		<br>
		<input type="button" value ="來按我吧" onClick="var reply = confirm('按下確定的話會是true哦，按下取消則是false哦');alert('是'+reply+'吧，快請我吃飯吧')">
		<br>
		<br>
		<input type="button" value="再按啊" onClick="var msg = prompt('你倒是給我打點東西啊，混帳','對啦對啦，就是那裏啦');alert('讓我猜猜，你剛剛打的是不是'+'“'+msg+'”啊？')">
		<br>
		<br>
		<input type="button" value="I wanna play a game..." onClick="startTimer()">
	</form>
</body>
</html>
```` 
