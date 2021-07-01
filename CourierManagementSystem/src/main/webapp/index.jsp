<html>
<head>
<body>
<!-- 	<form action="test" method="post">
		<input name="i1" type="text"> <input name="i2" type="text">
		<input type="submit" value="submit">
	

	</form> -->
	<p>${errors}</p>
	
	

		$("#pSubDistrict")
				.change(
						function(e) {
							var fData = $('#form').serialize();
							$('#dDivision').find('option').remove();
							$('#dDivision')
									.append(
											'<option value="default" disabled selected>Select</option>');
							$
									.ajax({
										url : "trackControl",
										dataType : "json",
										type : "GET",
										data : fData,
										success : function(data) {
											var val = $
													.parseJSON(data[0].dDivision)
											for (i = 0; i < val.length; i++) {
												$('#dDivision').append(
														'<option>' + val[i]
																+ '</option>');

											}
										},
										error : function() {
											console.log("error...........")

											$('#pSubDistrict')
													.append(
															'<option value="default" disabled selected>No Sub district found</option>');
										}
									});
						});
	
	
	
</body>
</html>
