import java.io.*;
import java.lang.reflect.*;

class Main {
    public static void main(String[] args) throws Exception {
        String className = "EvilClass";
        String classCode = "package evilPackage;\n" +
                "public class EvilClass {\n" +
                "   static {\n" +
                "       try {\n" +
                "           Runtime.getRuntime().exec(\"calc\");\n" +
                "       } catch (Exception e) {\n" +
                "           e.printStackTrace();\n" +
                "       }\n" +
                "   }\n" +
                "}";

        File file = new File("evilPackage/EvilClass.java");
        file.getParentFile().mkdirs();
        file.createNewFile();
        FileWriter writer = new FileWriter(file);
        writer.write(classCode);
        writer.close();

        ProcessBuilder builder = new ProcessBuilder("javac", "evilPackage/EvilClass.java");
        builder.start().waitFor();

        Class<?> clazz = Class.forName(className);
        Method method = clazz.getMethod("sayHello");
        method.invoke(clazz.newInstance());
    }
}