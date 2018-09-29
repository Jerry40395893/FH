/*****************
 *版权所有 (c)2018,厦门great corp<p> 
 *文件名称：SchoolEntity.java
 *
 *创建时间：2018年9月28日
 *当前版本：v1.0
 */
package org.xmgreat.entity;

import org.springframework.stereotype.Component;

/**
 * @author 周群新
 *
 */
@Component
public class SchoolEntity {

	private int school_Id;
	private String school_Name;
	private String school_Type;
	private String area_Id;
	private String area_Name;
	private String display_Order;
	
	public SchoolEntity() {
		
	}

	public int getSchool_Id() {
		return school_Id;
	}

	public void setSchool_Id(int school_Id) {
		this.school_Id = school_Id;
	}

	public String getSchool_Name() {
		return school_Name;
	}

	public void setSchool_Name(String school_Name) {
		this.school_Name = school_Name;
	}

	public String getSchool_Type() {
		return school_Type;
	}

	public void setSchool_Type(String school_Type) {
		this.school_Type = school_Type;
	}

	public String getArea_Id() {
		return area_Id;
	}

	public void setArea_Id(String area_Id) {
		this.area_Id = area_Id;
	}

	public String getArea_Name() {
		return area_Name;
	}

	public void setArea_Name(String area_Name) {
		this.area_Name = area_Name;
	}

	public String getDisplay_Order() {
		return display_Order;
	}

	public void setDisplay_Order(String display_Order) {
		this.display_Order = display_Order;
	}
	
	
}
