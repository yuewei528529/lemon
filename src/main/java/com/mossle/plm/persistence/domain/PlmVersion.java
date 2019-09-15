package com.mossle.plm.persistence.domain;

// Generated by Hibernate Tools
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * PlmVersion .
 * 
 * @author Lingo
 */
@Entity
@Table(name = "PLM_VERSION")
public class PlmVersion implements java.io.Serializable {
    private static final long serialVersionUID = 0L;

    /** null. */
    private Long id;

    /** null. */
    private PlmProject plmProject;

    /** null. */
    private String name;

    /** null. */
    private String status;

    /** null. */
    private Date createTime;

    /** null. */
    private String userId;

    /** null. */
    private Integer priority;

    /** . */
    private Set<PlmIssue> plmIssues = new HashSet<PlmIssue>(0);

    /** . */
    private Set<PlmRequirement> plmRequirements = new HashSet<PlmRequirement>(0);

    public PlmVersion() {
    }

    public PlmVersion(Long id) {
        this.id = id;
    }

    public PlmVersion(Long id, PlmProject plmProject, String name,
            String status, Date createTime, String userId, Integer priority,
            Set<PlmIssue> plmIssues, Set<PlmRequirement> plmRequirements) {
        this.id = id;
        this.plmProject = plmProject;
        this.name = name;
        this.status = status;
        this.createTime = createTime;
        this.userId = userId;
        this.priority = priority;
        this.plmIssues = plmIssues;
        this.plmRequirements = plmRequirements;
    }

    /** @return null. */
    @Id
    @Column(name = "ID", unique = true, nullable = false)
    public Long getId() {
        return this.id;
    }

    /**
     * @param id
     *            null.
     */
    public void setId(Long id) {
        this.id = id;
    }

    /** @return null. */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PROJECT_ID")
    public PlmProject getPlmProject() {
        return this.plmProject;
    }

    /**
     * @param plmProject
     *            null.
     */
    public void setPlmProject(PlmProject plmProject) {
        this.plmProject = plmProject;
    }

    /** @return null. */
    @Column(name = "NAME", length = 200)
    public String getName() {
        return this.name;
    }

    /**
     * @param name
     *            null.
     */
    public void setName(String name) {
        this.name = name;
    }

    /** @return null. */
    @Column(name = "STATUS", length = 50)
    public String getStatus() {
        return this.status;
    }

    /**
     * @param status
     *            null.
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /** @return null. */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CREATE_TIME", length = 26)
    public Date getCreateTime() {
        return this.createTime;
    }

    /**
     * @param createTime
     *            null.
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /** @return null. */
    @Column(name = "USER_ID", length = 64)
    public String getUserId() {
        return this.userId;
    }

    /**
     * @param userId
     *            null.
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /** @return null. */
    @Column(name = "PRIORITY")
    public Integer getPriority() {
        return this.priority;
    }

    /**
     * @param priority
     *            null.
     */
    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    /** @return . */
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "PLM_ISSUE_VERSION", joinColumns = { @JoinColumn(name = "VERSION_ID", nullable = false, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "ISSUE_ID", nullable = false, updatable = false) })
    public Set<PlmIssue> getPlmIssues() {
        return this.plmIssues;
    }

    /**
     * @param plmIssues
     *            .
     */
    public void setPlmIssues(Set<PlmIssue> plmIssues) {
        this.plmIssues = plmIssues;
    }

    /** @return . */
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "plmVersion")
    public Set<PlmRequirement> getPlmRequirements() {
        return this.plmRequirements;
    }

    /**
     * @param plmRequirements
     *            .
     */
    public void setPlmRequirements(Set<PlmRequirement> plmRequirements) {
        this.plmRequirements = plmRequirements;
    }
}
