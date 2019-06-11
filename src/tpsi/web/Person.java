package tpsi.web;

import java.awt.*;

public class Person {
    private String firstName, lastName, email;

    public Person(String firstName,String lastName,String email){
        this.firstName=firstName;
        this.lastName=lastName;
        this.email=email;
    }
    public String getFirstName(){
        return firstName;
    }
    public String getLastName(){
        return lastName;
    }
    public String getEmail(){
        return email;
    }

    @Override
    public String toString() {
        return firstName +" " +lastName+ " Email: "+ email;
    }
}