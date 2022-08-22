package karate.request.User;

import com.intuit.karate.junit5.Karate;

public class CreateRunner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/user/create.feature").relativeTo(getClass());
    }
}



