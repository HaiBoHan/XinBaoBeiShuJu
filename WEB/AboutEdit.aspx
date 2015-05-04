<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutEdit.aspx.cs" validateRequest="false"  Inherits="AboutEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="resources/css/style1.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />
    <script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
    <script type="text/javascript" src="resources/scripts/facebox.js"></script>
    <script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
    <!-- <script type="text/javascript" src="resources/scripts/jquery.datePicker.js"></script> -->
    <script type="text/javascript" src="resources/scripts/jquery.date.js"></script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <link rel="stylesheet" href="kindeditor/themes/default/default.css" />
		<script type="text/jscript" charset="utf-8" src="kindeditor/kindeditor-min.js"></script>
		<script type="text/jscript" charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
		<script type="text/jscript">
			var editor;
			KindEditor.ready(function(K) {
			    editor = K.create('textarea[name="content"]', {
			        allowFileManager: true,
			        uploadJson: './kindeditor/asp.net/upload_json.ashx',
			        fileManagerJson: './kindeditor/asp.net/file_manager_json.ashx'
			    });
			    K('input[name=getHtml]').click(function(e) {
			        if (editor.html() === "") {
			            alert("没有数据，不执行保存！");
			            return;
			        } else {
			        document.getElementById('txtContent').value = editor.html();
			        this.form.txtContent.value = editor.html();
			            document.getElementById('txtContent').onchange();
			        }
			    });
			});
		</script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main-content" style="margin: -2px 0px 0px -1px;padding: 0px 0px 0px;">
        <div style="margin: 0px;">
            <div class="content-box">
                <div class="content-box-header">
                    <ul class="content-box-tabs">
                        <li><a href="#tab1" class="default-tab">关于我们</a></li>
                    </ul>
                    <div class="clear"></div>
                </div>

                <table border="0" width="100%" cellpadding="0">
                <tr>
                        <td style="width:75%">
                            <label> </label>
                        </td>
                        <td>
                        <asp:Button runat="server"  class="form_submit" ID="getHtml" name="getHtml"  Text="保存" />
			            	
                        </td>
                        <td>
                        <asp:Button runat="server"  class="form_submit" ID="BtnOpenHtml" Text="查看" OnClick="BtnOpenHtml_Click" />
                        </td>
                        
                    </tr>
                    
                    <tr>
                         <td align="right" valign="top" class="style1">
                           
		                    	<textarea rows="1" cols="1" id="txtareaContent" name="content" style="width:800px;height:500px;visibility:hidden;"></textarea>
		                    
		                    	<asp:HiddenField runat="server" ID="txtContent"  OnValueChanged="txtContent_Changed"/>
			                   <%--<input type="button" name="getHtml" value="保存" />--%>
                        </td>
                    </tr>
                    <tr align="left">
                        
                         <td>
                         <asp:TextBox ID="txtID" runat="server"  MultiLine="false" Alignment="0" ReadOnly="true" Visible="false"></asp:TextBox>
                   
                                
                         </td>
                    </tr>
                </table>
            </div>
        </div>

    </form>
</body>
</html>
