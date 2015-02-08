
	$(function(){
		$(".btn-info").click(function(){
			var formId="ajax"+$(this).attr("id");
			$.post('website/update',$("#"+formId).serialize(),function(data){
				if(data.success){
					alert('操作成功！');
					location.href = location.href;
				}else{
					alert('erro:服务器返回了一个错误，操作失败！\n请联系开发人员！！！');
				}
			});
		});
	});