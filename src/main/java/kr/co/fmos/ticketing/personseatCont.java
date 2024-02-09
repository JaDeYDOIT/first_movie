package kr.co.fmos.ticketing;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class personseatCont {

	@PostMapping("/test.do")
    @ResponseBody
    public void processArray(@RequestParam List<Map<String, Object>> doubleArray) {
        // 전달받은 배열의 각 요소를 출력
       
       System.out.println(doubleArray);
    }
}

