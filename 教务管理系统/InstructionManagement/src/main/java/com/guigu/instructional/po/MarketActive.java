package com.guigu.instructional.po;

import java.util.Date;

public class MarketActive {
    private Integer activeId;

    private Integer staffId;

    private String activeName;

    private Integer activeState;

    private Date activeStart;

    private Date activeEnd;

    private Integer activeType;

    private Double activeCosteEstimate;

    private Double activeCoste;

    private Integer activeRefectEstimate;

    private String activeStudent;

    private String activeContent;
    
    // 添加对应负责人姓名属性
    private String staffName;

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

    public Integer getActiveId() {
        return activeId;
    }

    public void setActiveId(Integer activeId) {
        this.activeId = activeId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public String getActiveName() {
        return activeName;
    }

    public void setActiveName(String activeName) {
        this.activeName = activeName == null ? null : activeName.trim();
    }

    public Integer getActiveState() {
        return activeState;
    }

    public void setActiveState(Integer activeState) {
        this.activeState = activeState;
    }

    public Date getActiveStart() {
        return activeStart;
    }

    public void setActiveStart(Date activeStart) {
        this.activeStart = activeStart;
    }

    public Date getActiveEnd() {
        return activeEnd;
    }

    public void setActiveEnd(Date activeEnd) {
        this.activeEnd = activeEnd;
    }

    public Integer getActiveType() {
        return activeType;
    }

    public void setActiveType(Integer activeType) {
        this.activeType = activeType;
    }

    public Double getActiveCosteEstimate() {
        return activeCosteEstimate;
    }

    public void setActiveCosteEstimate(Double activeCosteEstimate) {
        this.activeCosteEstimate = activeCosteEstimate;
    }

    public Double getActiveCoste() {
        return activeCoste;
    }

    public void setActiveCoste(Double activeCoste) {
        this.activeCoste = activeCoste;
    }

    public Integer getActiveRefectEstimate() {
        return activeRefectEstimate;
    }

    public void setActiveRefectEstimate(Integer activeRefectEstimate) {
        this.activeRefectEstimate = activeRefectEstimate;
    }

    public String getActiveStudent() {
        return activeStudent;
    }

    public void setActiveStudent(String activeStudent) {
        this.activeStudent = activeStudent == null ? null : activeStudent.trim();
    }

    public String getActiveContent() {
        return activeContent;
    }

    public void setActiveContent(String activeContent) {
        this.activeContent = activeContent == null ? null : activeContent.trim();
    }
}