<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>영화</title>
</head>
<body>

	<script>
		var cnt = ${cnt}
                if (cnt == 1) {
                    Swal.fire({
                        title: "대관문의가 완료되었습니다.",
                        icon: "success"
                    }).then((result) => {
                        if (result.value) {
                        	window.location.href = "/customer/notice.do?notice_kind=0";
                        }
                    });
                }
	</script>

	

</body>
</html>