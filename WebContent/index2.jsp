<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>职位编辑</title>
<link href="static/css/style2.css" rel="stylesheet"/>
</head>
<body>
<form action="">
	<div class="content">
		<div class="top">
			<ul>
				<li class="top_1">产品管理</li>
				<li><span>管理导航：</span>产品类别添加&nbsp;&nbsp;产品信息管理</li>
				<li>
					<input type="button" value="添加产品内容"/>&nbsp;&nbsp;
					产品类别：<select><option>|-- 请选择产品类别 --|</option></select>
					&nbsp;关键字搜索<input />搜索
				</li>
				<li><input type="button" value="中文产品列表"/></li>
			</ul>
		</div>
		<div class="middle">
			<table>
				<tr><td>选择语言：</td>
					<td colspan="2">
						<input type="radio" checked="checked"/>中文
					</td></tr>
				<tr><td>1</td><td>1</td><td>1</td></tr>
				<tr><td>1</td><td>1</td><td>1</td></tr>
				<tr><td>1</td><td>1</td>
					<td>
						<input type="button" disabled="disabled" value="删除"/>
					</td></tr>
				<tr><td>1</td><td>1</td><td>1</td></tr>
			</table>
		</div>
		<div class="footer">
			<div></div>
			<div id="editor"></div>
			<div></div>
		</div>
	</div>
</form>
	<script src="static/js/wangEditor.min.js"></script>
	<script>
		var E = window.wangEditor;
    	var editor = new E('#editor');
    	// 自定义菜单配置
        editor.customConfig.menus = [
        	'fontName',
            'fontSize', 
            'italic',
            'underline',
            'strikeThrough',
            'foreColor',
            'backColor',
            'image'
        ]
     	// 自定义配置颜色（字体颜色、背景色）
        editor.customConfig.colors = [
            '#000000',
            '#eeece0',
            '#1c487f',
            '#4d80bf',
            '#c24f4a',
            '#8baa4a',
            '#7b5ba1',
            '#46acc8'
        ]
     	// 关闭粘贴样式的过滤
        editor.customConfig.pasteFilterStyle = true
        // 忽略粘贴内容中的图片
        editor.customConfig.pasteIgnoreImg = true
     	// 上传图片到服务器
        editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/upload';
     	// 隐藏“网络图片”菜单
        editor.customConfig.showLinkImg = false;
     	// 将图片大小限制为 5M
        editor.customConfig.uploadImgMaxSize = 5 * 1024 * 1024;
     	// 限制一次最多能传几张图片，默认为 10000 张（即不限制），需要限制可自己配置
    	// 限制一次最多上传 5 张图片
    	editor.customConfig.uploadImgMaxLength = 5;
     	// 监听函数，可使用监听函数在上传图片的不同阶段做相应处理
     	editor.customConfig.uploadImgHooks = {
        	customInsert: function (insertImg, result, editor) {
            	for(var i in result){
            		// 表示文件上传到服务器的路径
            		insertImg('${pageContext.request.contextPath}/static/file/'+result[i]);
            	}
        	}
        }
    	editor.create();
	</script>
</body>
</html>



