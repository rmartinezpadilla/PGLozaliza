package payments.get.token_wompi;

import com.intuit.karate.junit5.Karate;

public class GetTokenWompiRunner {

    @Karate.Test
    Karate getTokenWompi(){
        return Karate.run().relativeTo(getClass());
    }
}
