package com.hris.portal.util;

import java.security.Key;
import java.security.MessageDigest;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class PortalUtil {
	public String getHash(String pass) throws Exception {
		MessageDigest mDigest = MessageDigest.getInstance("SHA1");
		
		byte[] result = mDigest.digest(pass.getBytes());
        StringBuffer shaResult = new StringBuffer();
        
        for (int i = 0; i < result.length; i++) {
        	shaResult.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
        }
         
        return shaResult.toString().toUpperCase();
	}
	
	public String encrypt(String plainText, String key) {
		String encryptedText = null; 
		
		try {
			Key aesKey = new SecretKeySpec(key.getBytes(), "AES");
			Cipher cipher = Cipher.getInstance("AES");
			cipher.init(Cipher.ENCRYPT_MODE, aesKey);
			
			byte[] encryptedByte = cipher.doFinal(plainText.getBytes());
			Base64.Encoder encoder = Base64.getEncoder();
			encryptedText = encoder.encodeToString(encryptedByte);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return encryptedText;
	}

	public String decrypt(String encryptedText, String key) {
		String decryptedText = null;
		
		try {
			Key aesKey = new SecretKeySpec(key.getBytes(), "AES");
			Cipher cipher = Cipher.getInstance("AES");
			cipher.init(Cipher.DECRYPT_MODE, aesKey);
			
			Base64.Decoder decoder = Base64.getDecoder();
			byte[] decryptedByte = cipher.doFinal(decoder.decode(encryptedText));
			decryptedText = new String(decryptedByte);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return decryptedText;
	}
}
