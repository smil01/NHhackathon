package Util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

public class STT_Server_To {
	public static String getClassification(String content) {
		String result = "0";

		try {
			Socket m_Socket = new Socket("127.0.0.1", 5556);

			PrintWriter sendWriter = new PrintWriter(m_Socket.getOutputStream());
			sendWriter.print(content);
			sendWriter.flush();

			BufferedReader in = new BufferedReader(new InputStreamReader(m_Socket.getInputStream()));
			result = in.readLine();

			in.close();
			sendWriter.close();
			m_Socket.close();
		} catch (Exception e) {
			System.out.println("*************************AI분류쪽 오류");
		}

		return result;
	}
}
