package org.ligson.test;

import java.io.File;

import org.apache.nutch.crawl.Crawler;

public class CrawTest {
	public static void main(String[] args) {
		System.out.println(new File("./plugin").getAbsolutePath());
		Crawler crawler = new Crawler();
		args = new String[1];
		args[0] = "urls";
		try {
			crawler.main(args);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
