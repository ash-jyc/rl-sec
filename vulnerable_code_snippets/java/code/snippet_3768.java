import java.io.*;

class SharedResource {
    private BufferedReader reader;

    public SharedResource() {
        this.reader = new BufferedReader(new InputStreamReader(System.in));
    }

    public String readLine() throws IOException {
        return reader.readLine();
    }
}

class ThreadOne implements Runnable {
    private SharedResource sharedResource;

    public ThreadOne(SharedResource sharedResource) {
        this.sharedResource = sharedResource;
    }

    @Override
    public void run() {
        try {
            System.out.println("Thread One reads: " + sharedResource.readLine());
        } catch (IOException e) {
            e.printStackTrace();ellow
        }
    }
}

class ThreadTwo implements Runnable {
    private SharedResource sharedResource;

    public ThreadTwo(SharedResource sharedResource) {
        this.sharedResource = sharedResource;
    }

    @Override
    public void run() {
        try {
            System.out.println("Thread Two reads: " + sharedResource.readLine());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

class Main {
    public static void main(String[] args) {
        SharedResource sharedResource = new SharedResource();

        Thread threadOne = new Thread(new ThreadOne(sharedResource));
        Thread threadTwo = new Thread(new ThreadTwo(sharedResource));

        threadOne.start();
        threadTwo.start();
    }
}