package com.model.tool;

public class Page {
	private Integer pagesize; //ҳ���С
    private Integer pageno; //��ǰҳ
    private Integer startrow; //��ʼ��
    private Integer totalpage; //��ҳ��
    private Integer totalcount; //������
    
    
    public Page() {
    }
    public Page(Integer pageSize, Integer pageNo, Integer totalCount) {
        this.pagesize = pageSize; //ҳ���С 
        this.pageno = pageNo;  //��ǰҳ
        this.totalcount = totalCount; //����������
        this.setStartrow(pageNo, pageSize); //������ʼ��
        this.setTotalpage(totalCount, pageSize); //������ҳ��
    }	
    public Integer getPagesize() {
        return pagesize;
    }
    public void setPagesize(Integer pageSize) {
        this.pagesize = pageSize;
    }
    public Integer getPageno() {
        return pageno;
    }
    public void setPageno(Integer pageNo) {
        this.pageno = pageNo;
    }
    public Integer getStartrow() {
        return startrow;
    }
    /**
     * ������ʼ��
     * @param pageNo
     * @param pageSize
     */
    public void setStartrow(Integer pageNo,Integer pageSize) {
        this.startrow = (pageNo-1)*pageSize;
    }
    public Integer getTotalpage() {
        return totalpage;
    }
    /**
     * ������ҳ��
     * @param totalCount
     * @param pageSize
     */
    public void setTotalpage(Integer totalCount,Integer pageSize) {
        this.totalpage = totalCount%pageSize==0?totalCount/pageSize:totalCount/pageSize+1;
    }
    public Integer getTotalcount() {
        return totalcount;
    }
    public void setTotalCount(Integer totalCount) {
        this.totalcount = totalCount;
    }
    @Override
    public String toString() {
        return "[{\"pageno\":" + pageno + ",\"pagesize\":" + pagesize
                + ",\"startrow\":" + startrow + ",\"totalcount\":" + totalcount
                + ",\"totalpage\":" + totalpage + "}]";
    }
    
    
}
