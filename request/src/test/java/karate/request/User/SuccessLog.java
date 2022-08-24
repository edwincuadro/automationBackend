package karate.request.User;

import com.intuit.karate.junit5.Karate;

public class SuccessLog {
    @Karate.Test
    Karate SuccessLog(){
        return Karate.run("classpath:karate/request/user/successLogin.feature").relativeTo(getClass());
    }
}
