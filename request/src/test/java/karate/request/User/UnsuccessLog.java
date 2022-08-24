package karate.request.User;

import com.intuit.karate.junit5.Karate;

public class UnsuccessLog {
    @Karate.Test
    Karate UnsuccessfulLog(){
        return Karate.run("classpath:karate/request/user/unsuccessLogin.feature").relativeTo(getClass());
    }
}
