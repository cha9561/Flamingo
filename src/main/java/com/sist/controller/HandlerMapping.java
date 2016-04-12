package com.sist.controller;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import java.util.*;

public class HandlerMapping extends DefaultHandler{
	List<String> list=new ArrayList<String>();

	@Override
	public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
		// TODO Auto-generated method stub
		try
		{
			if(qName.equals("context:component-scan"))
			{
				String pack=attributes.getValue("base-package");
				list.add(pack);
			}
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		
	}
	
}
