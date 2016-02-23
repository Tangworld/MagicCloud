package MagicCloud;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;

public class TestPost {

    public static void TestPost() throws IOException {

        URL url = new URL("http://www.tuniu.com/pkg");
        URLConnection connection = url.openConnection();
        connection.setDoOutput(true);
        OutputStreamWriter out = new OutputStreamWriter(connection.getOutputStream(), "UTF-8");
        out.write("airplane_origin=nanjing&airplane_destination=qingdao"); // 向页面传递数据。post的关键所在！
        out.flush();
        out.close();
        // 一旦发送成功，用以下方法就可以得到服务器的回应：
        String sCurrentLine;
        String sTotalString;
        sCurrentLine = "";
        sTotalString = "";
        InputStream l_urlStream;
        l_urlStream = connection.getInputStream();
        // 传说中的三层包装阿！
        BufferedReader l_reader = new BufferedReader(new InputStreamReader(
                l_urlStream));
        while ((sCurrentLine = l_reader.readLine()) != null) {
            sTotalString += sCurrentLine + "\r\n";

        }
        System.out.println(sTotalString);

    }

    public static void main(String[] args) throws IOException {
        TestPost();
    }
}
