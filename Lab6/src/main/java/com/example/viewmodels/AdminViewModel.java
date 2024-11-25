package com.example.viewmodels;

public class AdminViewModel {
    private String programName;
    private String programDescription;
    private int programDuration; // Duration in weeks

    // Constructor
    public AdminViewModel(String programName, String programDescription, int programDuration) {
        this.programName = programName;
        this.programDescription = programDescription;
        this.programDuration = programDuration;
    }

    // Getters and Setters
    public String getProgramName() {
        return programName;
    }

    public void setProgramName(String programName) {
        this.programName = programName;
    }

    public String getProgramDescription() {
        return programDescription;
    }

    public void setProgramDescription(String programDescription) {
        this.programDescription = programDescription;
    }

    public int getProgramDuration() {
        return programDuration;
    }

    public void setProgramDuration(int programDuration) {
        this.programDuration = programDuration;
    }

    // For debugging or display purposes
    @Override
    public String toString() {
        return "AdminViewModel{" +
                "programName='" + programName + '\'' +
                ", programDescription='" + programDescription + '\'' +
                ", programDuration=" + programDuration +
                '}';
    }
}
