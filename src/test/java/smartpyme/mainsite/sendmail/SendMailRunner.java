package smartpyme.mainsite.sendmail;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:smartpyme/mainsite/sendmail/senMail.feature")
public class SendMailRunner {
}
