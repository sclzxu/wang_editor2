<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>职位编辑</title>
<link href="static/css/style.css" rel="stylesheet"/>
</head>
<body>
	<div class="content">
	<form action="" method="post">
		<table border="1px solid black">
			<tr><td class="before_td">招聘对象</td>
				<td><input name="" value="行业客户经理" size="60"/></td></tr>
			<tr><td>招聘人数</td>
				<td><input name="" value="2"/>人</td></tr>
			<tr><td>工作地点</td>
				<td><input name="" value="上海"/></td></tr>
			<tr><td>工资待遇</td>
				<td><input name="" value="面议"/></td></tr>
			<tr><td>发布日期</td>
				<td><input name="" type="date" value="2005-12-18"/></td></tr>
			<tr><td>有效期限</td>
				<td><input name="" value="20"/>天</td></tr>
			<tr><td>招聘要求</td>
				<td>
					<div id="editor"></div>
				</td></tr>
			<tr><td colspan="2">
				<input type="submit" value="确定"/>&nbsp;
				<input type="reset" value="重置"/>
			</td></tr>
		</table>
	</form>
	</div>
	<script src="static/js/wangEditor.min.js"></script>
	<script>
		var E = window.wangEditor;
    	var editor = new E('#editor');
    	// 自定义菜单配置
        editor.customConfig.menus = [
        	'fontSize',
            'fontName', 
            'bold',
            'italic',
            'underline'
        ]
    	editor.create();
	</script>
</body>
</html>



