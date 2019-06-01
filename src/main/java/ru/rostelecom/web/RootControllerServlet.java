package ru.rostelecom.web;

import org.json.JSONArray;
import ru.rostelecom.Repository.StateRepository;
import ru.rostelecom.model.State;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import org.slf4j.Logger;

import static org.slf4j.LoggerFactory.getLogger;

@WebServlet(name = "State", urlPatterns = "/state")
public class RootControllerServlet extends HttpServlet {
    private static final Logger log = getLogger(RootControllerServlet.class);

    private static final JSONArray json = new JSONArray(StateRepository.STATES);


    public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

        log.debug(String.valueOf(json));

        response.setContentType("application/json");
        response.getWriter().write(json.toString());

    }
}
