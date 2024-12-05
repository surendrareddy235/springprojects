package plantsellingdemoproject1;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
@Service
public class EmailService {
	 @Autowired
	    private JavaMailSender mailSender;

	    public void sendOrderConfirmation(String toEmail, String subject, String body) throws MessagingException {
	        MimeMessage message = mailSender.createMimeMessage();
	        MimeMessageHelper helper = new MimeMessageHelper(message, true);

	        helper.setFrom(toEmail);
	        helper.setTo("anjireddy7q@gmail.com");
	        helper.setSubject(subject);
	        helper.setText(body, true); // 'true' enables HTML

	        mailSender.send(message);
	    }
}
