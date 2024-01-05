package kr.co.fmos.ticketing;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/test")
public class SeatReservationCon {

    @PostMapping("/submitReservation")
    public String submitReservation(@RequestBody SeatReservationDTO reservationData, Model model) {
        // 서버 로직 수행
        System.out.println("Received data from the client: " + reservationData);

        // 데이터를 모델에 추가
        model.addAttribute("reservationData", reservationData);

        // 다음 페이지로 이동
        return "redirect:/ticketing/orderSettlement";
    }
}