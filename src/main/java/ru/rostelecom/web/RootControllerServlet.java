package ru.rostelecom.web;

import org.json.JSONArray;
import org.json.JSONObject;
import ru.rostelecom.model.State;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "State", urlPatterns = "/state")
public class RootControllerServlet extends HttpServlet {

    private List<State> states = Arrays.asList(
            new State("AL", "Alabama"),
            new State("AK", "Alaska"),
            new State("AZ", "Arizona"),
            new State("AR", "Arkansas"),
            new State("CA", "California"),
            new State("CO", "Colorado"),
            new State("CT", "Connecticut"),
            new State("FL", "Florida"),
            new State("GA", "Georgia"),
            new State("WA", "Washington"),
            new State("WA", "Washington"),
            new State("AL", "Alabama"),
            new State("AK", "Alaska"),
            new State("AZ", "Arizona"),
            new State("AR", "Arkansas"),
            new State("CA", "California"),
            new State("CO", "Colorado"),
            new State("CT", "Connecticut"),
            new State("FL", "Florida"),
            new State("GA", "Georgia"),
            new State("WA", "Washington"),
            new State("WA", "Washington"),
            new State("AL", "Alabama"),
            new State("AK", "Alaska"),
            new State("AZ", "Arizona"),
            new State("AR", "Arkansas"),
            new State("CA", "California"),
            new State("CO", "Colorado"),
            new State("CT", "Connecticut"),
            new State("FL", "Florida"),
            new State("GA", "Georgia"),
            new State("WA", "Washington"),
            new State("WA", "Washington"),
            new State("AL", "Alabama"),
            new State("AK", "Alaska"),
            new State("AZ", "Arizona"),
            new State("AR", "Arkansas"),
            new State("CA", "California"),
            new State("CO", "Colorado"),
            new State("CT", "Connecticut"),
            new State("FL", "Florida"),
            new State("GA", "Georgia"),
            new State("WA", "Washington"),
            new State("WA", "Washington")

    );

    public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

        response.setContentType("application/json");
        JSONObject json = new JSONObject();
        JSONArray jsonStates = new JSONArray(states);

        json.accumulate("state",jsonStates);
        response.getWriter().write(json.toString());


    }
}
