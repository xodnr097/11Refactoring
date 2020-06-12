package com.model2.mvc.web.papago;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/papago/*")

public class PapagoRestController {
	
	///Field
	
	
	public PapagoRestController() {
		System.out.println(this.getClass());
	}
	
	@RequestMapping( value="json/playpapago/{translateMessage}", method=RequestMethod.GET)
    public String translation(@PathVariable String translateMessage) {
		String finalResponse =null;
		
		System.out.println(translateMessage);
		System.out.println("파파고 시작");
        String clientId = "c2r8baJIVWOYr3Wsw3cz";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "XYmomSW45J";//애플리케이션 클라이언트 시크릿값";
        try {
            String text = URLEncoder.encode(translateMessage, "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            // post request
            String postParams = "source=fr&target=en&text=" + text;
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(postParams);
            wr.flush();
            wr.close();
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            System.out.println(response.toString());
            finalResponse = response.toString();
        } catch (Exception e) {
            System.out.println(e);
        }
		return finalResponse;
    }
		
	@RequestMapping( value="json/playpapago2/{message}", method=RequestMethod.GET)
    public String translation2(@PathVariable String message) {
		String finalResponse =null;
		
		System.out.println(message);
		System.out.println("파파고2 시작");
        String clientId = "c2r8baJIVWOYr3Wsw3cz";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "XYmomSW45J";//애플리케이션 클라이언트 시크릿값";
        try {
            String text = URLEncoder.encode(message, "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            // post request
            String postParams = "source=en&target=ko&text=" + text;
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(postParams);
            wr.flush();
            wr.close();
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            System.out.println(response.toString());
            finalResponse = response.toString();
        } catch (Exception e) {
            System.out.println(e);
        }
		return finalResponse;
    }
	
	
	
	
}
