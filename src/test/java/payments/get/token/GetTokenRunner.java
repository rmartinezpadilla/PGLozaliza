package payments.get.token;

import com.intuit.karate.junit5.Karate;

public class GetTokenRunner {

    @Karate.Test
    Karate getToken(){
        return Karate.run().relativeTo(getClass());
    }
}
