package karate.request.User;

import com.intuit.karate.junit5.Karate;

public class ClientRunner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/user/client.feature").relativeTo(getClass());
    }
}
