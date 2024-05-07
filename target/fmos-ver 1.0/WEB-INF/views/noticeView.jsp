<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="EUC-KR" />
        <title>��ȭ</title>
    </head>
    <body>
        <script>
            var cnt = ${cnt}
                          if (cnt == 1) {
                              Swal.fire({
                                  title: "������ǰ� �Ϸ�Ǿ����ϴ�.",
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
