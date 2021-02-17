package com.yurucamp.camp.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yurucamp.camp.model.service.CampService;

@RestController
public class AjaxController {

	private static final String RECAPTCHA_SERVICE_URL = "https://www.google.com/recaptcha/api/siteverify";
	private static final String SECRET_KEY_V2 = "6Lcks-UZAAAAACY5Vu7-LlNJrVxqXoi1YtKkus1O";
	private static final String SECRET_KEY_V3 = "6Lcd2-UZAAAAADixCa2fOIVSXZDb_P1_3Dpte6LN";

	@Autowired
	CampService service;

	@GetMapping(value = "/Ajax/CampSite/all", produces = "application/json")
	public String getUserJson(Model model) {
		return "";
	}

	@PostMapping(value = "/Ajax/CampSite/recaptchaV3", produces = "application/json") // recaptcha-v3版本
	public static boolean isValid(@RequestParam(value = "token") String clientRecaptchaResponse)
			throws IOException, ParseException {
		if (clientRecaptchaResponse == null || "".equals(clientRecaptchaResponse)) {
			return false;
		}

		URL obj = new URL(RECAPTCHA_SERVICE_URL);
		HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();

		con.setRequestMethod("POST");
		con.setRequestProperty("Accept-Language", "zh-TW,zh;q=0.8,en-US,en;q=0.5");

		// add client result as post parameter
		String postParams = "secret=" + SECRET_KEY_V3 + "&response=" + clientRecaptchaResponse;

		// send post request to google recaptcha server
		con.setDoOutput(true);
		DataOutputStream wr = new DataOutputStream(con.getOutputStream());
		wr.writeBytes(postParams);
		wr.flush();
		wr.close();

		int responseCode = con.getResponseCode();

		System.out.println("Post parameters: " + postParams);
		System.out.println("Response Code: " + responseCode);

		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();

		System.out.println(response.toString());

		// Parse JSON-response
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject) parser.parse(response.toString());

		Boolean success = (Boolean) json.get("success");
		Double score = (Double) json.get("score");

		System.out.println("success : " + success);
		System.out.println("score : " + score);

		// result should be sucessfull and spam score above 0.5
		return (success && score >= 0.5);
	}

	/**
	 * Validates Google reCAPTCHA V2 or Invisible reCAPTCHA.
	 *
	 * @param secretKey Secret key (key given for communication between your site
	 *                  and Google)
	 * @param response  reCAPTCHA response from client side. (g-recaptcha-response)
	 * @return true if validation successful, false otherwise.
	 */
	@PostMapping(value = "/Ajax/CampSite/recaptchaV2", produces = "application/json") // recaptcha-v2版本
	public synchronized boolean isCaptchaValid(@RequestParam("recaptcha") String clientRecaptchaResponse)
			throws IOException, ParseException {
		if (clientRecaptchaResponse == null || "".equals(clientRecaptchaResponse)) {
			return false;
		}

		URL obj = new URL(RECAPTCHA_SERVICE_URL);
		HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();

		con.setRequestMethod("POST");
		con.setRequestProperty("Accept-Language", "zh-TW,zh;q=0.8,en-US,en;q=0.5");

		// add client result as post parameter
		String postParams = "secret=" + SECRET_KEY_V2 + "&response=" + clientRecaptchaResponse;

		// send post request to google recaptcha server
		con.setDoOutput(true);
		DataOutputStream wr = new DataOutputStream(con.getOutputStream());
		wr.writeBytes(postParams);
		wr.flush();
		wr.close();

		int responseCode = con.getResponseCode();

		System.out.println("Post parameters: " + postParams);
		System.out.println("Response Code: " + responseCode);

		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();
		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();

		System.out.println(response.toString());

		// Parse JSON-response
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject) parser.parse(response.toString());

		Boolean success = (Boolean) json.get("success");

		System.out.println("success : " + success);

		return success;
	}

}
