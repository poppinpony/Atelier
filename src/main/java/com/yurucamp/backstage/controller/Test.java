package com.yurucamp.backstage.controller;

import java.io.File;
import java.io.IOException;

import org.json.JSONObject;

import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class Test {
	static String clientToken = "5b763c22be640408595883964e2a2c563d92a861";
	
	public static void main(String[] args) throws IOException {
		String jsonStr = uploadImg();
		System.out.println("json : " + jsonStr);
		JSONObject json = new JSONObject(jsonStr);
		JSONObject data = json.getJSONObject("data");
		String url = data.getString("link");
		String imageHash = data.getString("deletehash");
		System.out.println("url : " + url);
		System.out.println("imageHash : " + imageHash);
		String img = getImg(imageHash);
		System.out.println("img : " + img);
	}
	
	public static String uploadImg() throws IOException {
		RequestBody image = RequestBody.create(MediaType.parse("image/png"), new File("D://bb.png"));
		
		OkHttpClient client = new OkHttpClient().newBuilder()
			    .build();
			    RequestBody body = new MultipartBody.Builder().setType(MultipartBody.FORM)
			    .addFormDataPart("image", "test.png", image) //
			    .addFormDataPart("album", "CibMJrC")
			    .build();
			    Request request = new Request.Builder()
			      .url("https://api.imgur.com/3/image")
			      .method("POST", body)
			      .addHeader("Authorization", "Bearer " + clientToken)
			      .build();
			    Response response = client.newCall(request).execute();
				return response.body().string();
	}
	
	public static String getImg(String imageHash) throws IOException {
		 OkHttpClient client = new OkHttpClient().newBuilder()
			      .build();
			    Request request = new Request.Builder()
			      .url("https://api.imgur.com/3/image/" + imageHash)
			      .method("GET", null)
			      .addHeader("Authorization", "Bearer " + clientToken)
			      .build();
			    Response response = client.newCall(request).execute();
			    return response.body().string();
	}
}
