package com.Calculator.chinmay;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculatorHome {

    @RequestMapping("")
    public String home() {
        return "index.jsp";
    }

    @RequestMapping("/addition")
    public String addition(@RequestParam("num1") int n1, int num2, Model model) {
//        int num1 = Integer.parseInt(request.getParameter("num1"));
//        int num2 = Integer.parseInt(request.getParameter("num2"));

        int result = n1 + num2;
      //  session.setAttribute("result", result);
        model.addAttribute("result",result);
        return "calculate.jsp";
    }

    @RequestMapping("/subtract")
    public String subtract(@RequestParam("num1") int n1, int num2, Model model) {
//        int num1 = Integer.parseInt(request.getParameter("num1"));
//        int num2 = Integer.parseInt(request.getParameter("num2"));

        int result =( n1 - num2);

        //  session.setAttribute("result", result);
        model.addAttribute("result",result);
        return "calculate.jsp";
    }

    @RequestMapping("/multiply")
    public String multiply(@RequestParam("num1") int n1, int num2, Model model) {
//        int num1 = Integer.parseInt(request.getParameter("num1"));
//        int num2 = Integer.parseInt(request.getParameter("num2"));

        int result = n1 * num2;
        //  session.setAttribute("result", result);
        model.addAttribute("result",result);
        return "calculate.jsp";
    }

    @RequestMapping("/division")
    public String division(@RequestParam("num1") int n1, int num2, Model model) {
//        int num1 = Integer.parseInt(request.getParameter("num1"));
//        int num2 = Integer.parseInt(request.getParameter("num2"));

        int result = n1 / num2;
        //  session.setAttribute("ressult", result);
        model.addAttribute("result",result);
        return "calculate.jsp";
    }

}
