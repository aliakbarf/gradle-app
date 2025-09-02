package com.example;

import java.util.HashMap;
import java.util.Map;
import spark.Spark;

public class GradeApp {
    private static Map<String, String> grades = new HashMap<>();

    public static void main(String[] args) {
        Spark.port(8080);

        Spark.post("/grade", (req, res) -> {
            String student = req.queryParams("student");
            String grade = req.queryParams("grade");
            grades.put(student, grade);
            return "Grade recorded";
        });

        Spark.get("/grade/:student", (req, res) -> {
            String student = req.params(":student");
            return grades.getOrDefault(student, "No grade found");
        });
    }
}
