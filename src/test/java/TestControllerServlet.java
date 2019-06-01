import org.json.JSONArray;
import org.junit.Test;
import org.mockito.Mockito;
import ru.rostelecom.web.RootControllerServlet;
import javax.servlet.http.*;
import org.slf4j.Logger;

import java.io.PrintWriter;
import java.io.StringWriter;

import static org.slf4j.LoggerFactory.getLogger;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;


public class TestControllerServlet extends Mockito {

    static final Logger LOG = getLogger(TestControllerServlet.class);

    @Test
    public void testServlet() throws Exception {

        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);

        StringWriter stringWriter = new StringWriter();
        PrintWriter writer = new PrintWriter(stringWriter);
        when(response.getWriter()).thenReturn(writer);

        new RootControllerServlet().doGet(request, response);

        assertTrue(stringWriter.toString().contains("Alabama"));

        JSONArray output = new JSONArray(stringWriter.toString());
        assertEquals("Received incorrect number of JSON objects in array",44,output.length());


    }

}
