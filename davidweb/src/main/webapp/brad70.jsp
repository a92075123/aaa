<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	function test1(){
		$("#id1").load("brad69.jsp?max=" + $("#max").val());
	}
	function test2(){
		$.get("brad69.jsp?max=" + $("#max").val(), function(data, status){
			if (status == 'success'){
				$("#id1").html(data);				
			}
		});
	}
	function test3(){
		$.post("brad69.jsp",
			{
				"max": $("#max").val()
			},
			function(data, status){
				if (status == 'success'){
					$("#id1").html(data);				
				}
			}
		);
	}
</script>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<input id='max'>
		<button onclick="test1()">Test1</button><hr />
		<button onclick="test2()">Test GET</button><hr />
		<button onclick="test3()">Test POST</button><hr />
		<div id="id1"></div>
	</body>
</html>