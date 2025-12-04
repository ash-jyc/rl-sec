import java.nio.ByteBuffer;
import java.lang.reflect.Field;

class Main {
    public static void main(String[] args) throws Exception {
        ByteBuffer buffer = ByteBuffer.allocateDirect(1024);
        Field field = ByteBuffer.class.getDeclaredField("address");
        field.setAccessible(true);
        long address = field.getLong(buffer);
        int size = 1024;
        byte[] bytes = new byte[size];
        for (int i = 0; i < size; i++) {
            bytes[i] = (byte) i;
        }
        buffer.put(bytes);
        buffer.position(0);
        System.out.println(buffer.getInt());
    }
}