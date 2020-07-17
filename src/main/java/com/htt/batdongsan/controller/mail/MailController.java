package com.htt.batdongsan.controller.mail;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import com.htt.batdongsan.model.UserModel;
import com.htt.batdongsan.service.UserService;
import com.htt.batdongsan.utils.StringUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MailController {
    @Autowired
    public JavaMailSender emailSender;
    @Autowired
    UserService userService;
 
    @PostMapping("/reset-password")
    public String resetPassword(@RequestParam("email") String email) throws MessagingException {
        UserModel userModel = userService.selectOne(email);
        if(userModel == null) {
            return "redirect:/forgot-password?message=email_khong_dung";
        }
        String token = StringUtil.randomString(8);
        userService.saveToken(email, token);
        sendEmail(email, token);
        return "redirect:/change-password";
    }

    private void sendEmail(String email, String token)  throws MessagingException {
        MimeMessage message = emailSender.createMimeMessage();
        boolean multipart = true;
        MimeMessageHelper helper = new MimeMessageHelper(message, multipart, "utf-8");
        String htmlMsg = "<h3>Website Bất động sản</h3>"
                +"<h5>Token reset của bạn là: " + token + " </h5>";
        message.setContent(htmlMsg, "text/html");
        helper.setTo(email);
        helper.setSubject("[Website Bất động sản] Reset password");
        this.emailSender.send(message);
    }
}