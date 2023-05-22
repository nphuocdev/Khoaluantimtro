package com.timtro.controller.admin;

import com.timtro.entity.Account;
//import com.timtro.entity.BookRoom;
//import com.timtro.entity.Payment;
import com.timtro.entity.Place;
import com.timtro.service.AccountService;
//import com.timtro.service.BookRoomService;
//import com.timtro.service.PaymentService;
import com.timtro.service.PlaceService;
import com.timtro.utils.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.List;

@Controller
public class AccountAdmin {

    @Autowired
    private AccountService accountService;

    @Autowired
    private PlaceService placeService;

//    @Autowired
//    private BookRoomService bookRoomService;
//
//    @Autowired
//    private PaymentService paymentService;

    @RequestMapping(value="/admin/login")
    public ModelAndView Login(Model model, HttpServletRequest request, HttpSession session) {
        return new ModelAndView("admin/login");
    }

    @RequestMapping(value = "/admin/logoutSuccessful", method = RequestMethod.GET)
    public String logoutSuccessfulPage(HttpSession session) {
        session.removeAttribute("accAdmin");
        return "redirect:/admin/login";
    }

    @RequestMapping(value="/admin/index")
    public ModelAndView Home(Model model, HttpServletRequest request, HttpSession session) {
        try {
            List<Account> accountList = accountService.getAccount();
            List<Place> placeList = placeService.getAllPlace();
//            List<BookRoom> bookRooms = bookRoomService.getAllBookRoom();
//            List<Payment> payments = paymentService.findAll();
//            double doanhthu = 0;
//            for (Payment payment : payments) {
//                doanhthu += payment.getTotalPrice();
//            }

            model.addAttribute("khachhang", accountList.size());
            model.addAttribute("nhaphong", placeList.size());
//            model.addAttribute("datphong", bookRooms.size());
//            model.addAttribute("giaodich", doanhthu);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ModelAndView("admin/index");
    }

    @RequestMapping(value = "/admin/adminInfo", method = RequestMethod.GET)
    public String userInfo(Model model, Principal principal, HttpSession session) {

        String userName = principal.getName();

        System.out.println("User Name: " + userName);

        User loginedUser = (User) ((Authentication) principal).getPrincipal();

        String userInfo = WebUtils.toString(loginedUser);
        model.addAttribute("userInfo", userInfo);

        Account account = accountService.getAccountByUsername(userName);
        System.out.println(account.getName());
        System.out.println(account);
        session.setAttribute("accAdmin", account);
        return "redirect:/admin/account-admin";
    }

    @RequestMapping("/admin/403")
    public String err403(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("error", "Bạn không có quyền đăng nhập vào trang này!");
        return "redirect:/admin/login";
    }
}
