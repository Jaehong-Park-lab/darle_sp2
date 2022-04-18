package com.spring.darle.vo;

public class PagingVo {
	// 총 게시글, 시작게시글, 현재페이지, 총 페이지수, 시작페이지
	int totalCount, start, nowPage, totalPages, startPage;
	String searchOptions, searchData;

	public String getSearchOptions() {
		return searchOptions;
	}

	public void setSearchOptions(String searchOptions) {
		this.searchOptions = searchOptions;
	}

	public String getSearchData() {
		return searchData;
	}

	public void setSearchData(String searchData) {
		this.searchData = searchData;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = (start - 1) * 10 + 1;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalCount) {

		if (totalCount % 10 != 0) {
			this.totalPages = totalCount / 10 + 1;
		} else {
			this.totalPages = totalCount / 10;
		}
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int nowPage) {

		if (nowPage % 5 == 0) {
			startPage = ((nowPage / 5) - 1) * 5 + 1;
		} else {
			startPage = (nowPage / 5) * 5 + 1;
		}
	}
}
