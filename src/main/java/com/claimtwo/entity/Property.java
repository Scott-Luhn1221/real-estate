package com.claimtwo.entity;

import java.util.ArrayList;
import java.util.List;

import java.sql.Blob;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "agent_property")
public class Property
{
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "street")
	private String street;

	@Column(name = "city")
	private String city;

	@Column(name = "state")
	private String state;

	@Column(name = "zip")
	private String zip;

	@Column(name = "squarefoot")
	private Integer squarefoot;

	@Column(name = "price")
	private double price;

	@Column(name = "dateposted")
	private String datePosted;

	@Column(name = "images")
	private String images;

	public Property() {}

	public Property(Integer id, String street, String city, String state, String zip, Integer squarefoot, double price,
					String datePosted, String images)
	{
		this.id = id;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.squarefoot = squarefoot;
		this.price = price;
		this.datePosted = datePosted;
		this.images = images;
	}

	@Override
	public String toString()
	{
		return "Property [id=" + id + ", street=" + street + ", city=" + city + ", state=" + state + ", zip=" + zip
				+ ", squarefoot=" + squarefoot + ", price=" + price + ", datePosted=" + datePosted + ", images="
				+ images + "]";
	}

	public Integer getId() {return id;}
	public void setId(Integer id) {this.id = id;}

	public String getStreet() {return street;}
	public void setStreet(String street) {this.street = street;}

	public String getCity() {return city;}
	public void setCity(String city) {this.city = city;}

	public String getState() {return state;}
	public void setState(String state) {this.state = state;}

	public String getZip() {return zip;}
	public void setZip(String zip) {this.zip = zip;}

	public double getPrice() {return price;}
	public void setPrice(double price) {this.price = price;}

	public String getDatePosted() {return datePosted;}
	public void setDatePosted(String datePosted) {this.datePosted = datePosted;}

	public String getImages() {return images;}
	public void setImages(String images) {this.images = images;}

	public Integer getSquarefoot() {return squarefoot;}
	public void setSquarefoot(Integer squarefoot) {this.squarefoot = squarefoot;}
}