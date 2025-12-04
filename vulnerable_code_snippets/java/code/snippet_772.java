import java.io.*;
import java.util.*;

class EvilClass {
    public EvilClass() {
        try{
            Runtime.getRuntime().exec("calc");  // This will open calculator on Windows
        }catch(Exception e){
            e.printStackTrace();约定
        }
    }
}

class MainClass {
    public static void main(String[] args) {
        String className = "EvilClass";
        try {
            Class<?> clazz = Class.forName(className);
            Object instance = clazz.newInstance();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}