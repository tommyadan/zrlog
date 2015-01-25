
	$(function(){
		$(".btn-info").click(function(){
			var formId="ajax"+$(".btn-info").attr("id");
			if($("#form-field-1").val().length!=0 ){
				$.post('website/update',$("#"+formId).serialize(),function(data){
					if(data.success){
						alert('操作成功！');
						location.href = location.href;
					}else{
						alert('erro:服务器返回了一个错误，操作失败！\n请联系开发人员！！！');
					}
				});
			}/*else{
				alert('目录,名称,封面都不能为空');
			}*/
		});
	});