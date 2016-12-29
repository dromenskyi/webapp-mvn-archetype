#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
/**
 * This software is licensed under the terms of the MIT license.
 * Copyright (C) 2016 Dmytro Romenskyi
 */
package ${package}.${artifactId}.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path="api/")
public class RestControllerTemplate {

	@RequestMapping(path="resource", method=RequestMethod.GET)
	public ResponseEntity<Object> getResource() {
		Object resource = new Object();
		
		ResponseEntity<Object> response = new ResponseEntity<Object>(resource, HttpStatus.OK);
		return response;
	}
}