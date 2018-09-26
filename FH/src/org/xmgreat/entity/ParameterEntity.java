package org.xmgreat.entity;

   /**
    * ParameterEntity 实体类
    * Tue Sep 25 13:04:53 CST 2018 JX1803
    */ 


public class ParameterEntity{
	private Integer id;
	private String parameter;
	private String value;
	private Integer pid;

	public void setId(Integer id){
		this.id=id;
	}

	public Integer getId(){
		return id;
	}

	public void setParameter(String parameter){
		this.parameter=parameter;
	}

	public String getParameter(){
		return parameter;
	}

	public void setPid(Integer pid){
		this.pid=pid;
	}

	public Integer getPid(){
		return pid;
	}

	public ParameterEntity(){
		super();
	}

	public ParameterEntity(Integer id, String parameter, Integer pid){
		this.id = id;
		this.parameter = parameter;
		this.pid = pid;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
}

