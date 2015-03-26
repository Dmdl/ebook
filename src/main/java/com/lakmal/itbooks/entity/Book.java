package com.lakmal.itbooks.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
public class Book {
	@JsonProperty("Error")
	@JsonIgnoreProperties(ignoreUnknown = true)
	@Transient
	private String error;
	@JsonProperty("Time")
	@JsonIgnoreProperties(ignoreUnknown = true)
	@Transient
	private double time;
	@JsonProperty("ID")
	@Id
	private String id;
	@JsonProperty("Title")
	private String title;
	@JsonProperty("SubTitle")
	private String subTitle;

	@JsonProperty("Description")
	@Transient
	private String description;

	@JsonProperty("Author")
	private String author;
	@JsonProperty("ISBN")
	private String ISBN;
	@JsonProperty("Year")
	private String year;
	@JsonProperty("Page")
	private String page;
	@JsonProperty("Publisher")
	private String publisher;
	@JsonProperty("Image")
	private String image;
	@JsonProperty("Download")
	private String download;
	@JsonIgnoreProperties(ignoreUnknown = true)
	private int frequency;

	public int getFrequency() {
		return frequency;
	}

	public void setFrequency(int frequency) {
		this.frequency = frequency;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDownload() {
		return download;
	}

	public void setDownload(String download) {
		this.download = download;
	}
}
