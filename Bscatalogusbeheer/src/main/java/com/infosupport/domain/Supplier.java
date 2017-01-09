package com.infosupport.domain;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by Sander on 9-1-17.
 */

@Entity
public class Supplier {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;

    public Supplier(){}
}
