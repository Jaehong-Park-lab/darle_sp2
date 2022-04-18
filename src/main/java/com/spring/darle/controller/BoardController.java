package com.spring.darle.controller;

import com.spring.darle.dto.BoardDto;
import com.spring.darle.service.BoardService;
import com.spring.darle.vo.PagingVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BoardController {

  @Autowired
  private BoardService boardService;

  @GetMapping("/event")
  public String getEvent() {

    return "board/event";
  }

  /**
   * 게시글 리스트
   */
  @GetMapping("/notice")
  public String getNotice(Model model, PagingVo vo,
                          @RequestParam(value = "nowPage", required = false) String nowPage,
                          String searchData, String searchOptions) {

    if (nowPage == null || nowPage.equals("-1")) {
      nowPage = "1";
    }

    vo.setStart(Integer.parseInt(nowPage));
    vo.setTotalPages(boardService.getTotalCount());
    vo.setStartPage(Integer.parseInt(nowPage));

    List<Map<String, BoardDto>> content = new ArrayList<>();

    Map<String, Object> map = new HashMap<>();
    map.put("vo", vo);
    map.put("searchData", searchData);
    map.put("searchOptions", searchOptions);
    try {
      if (map.get("searchData") != null) {
        System.out.println("searchData : "+map.get("searchData"));
        content = boardService.getSearch(map);
        System.out.println("content : "+content);
      } else {
        content = boardService.getBoardList(vo);
      }
      System.out.println("model : " + model.toString());
    }catch (Exception e){
      e.printStackTrace();
    }

    model.addAttribute("viewAll", content);
    model.addAttribute("paging", vo);

    return "board/notice";
  }

  /**
   * 게시판 글쓰기 (Get)
   */
  @GetMapping("/boardWrite")
  public String getBoardWrite() {

    return "board/write";
  }

  /**
   * 게시판 글쓰기 (Post)
   */
  @PostMapping("/boardWrite")
  public String boardWrite(BoardDto dto, MultipartHttpServletRequest mRequest) {
    boardService.getWrite(dto);

//     파일 업로드
//    String result = "";
//    Iterator<String> iter = mRequest.getFileNames();
//
//    while (iter.hasNext()) {
//      String inputName = iter.next();
//      List<MultipartFile> mFiles = mRequest.getFiles(inputName);
//      for (MultipartFile mFile : mFiles) {
//        String oName = mFile.getOriginalFilename();
//        if (oName == null || oName.equals("")) {
//          break;
//        }
//
//        try {
//          try {
//            mFile.transferTo(new File("C:/codding/house/project/darle_sp/src/main/webapp/resources/image/images" + oName));
//          } catch (IOException e) {
//            e.printStackTrace();
//          }
//        } catch (IllegalStateException e) {
//          e.printStackTrace();
//        }
//      }
//    }

//    boardService.boardFileUpload(dto, )

    return "redirect:/notice";
  }

  /**
   * 게시글 보기
   */
  @GetMapping("/boardContent")
  public String getBoardContent(Model model, BoardDto dto,
                                @RequestParam(value = "page_number", required = true) int page_number) {

    model.addAttribute("content", boardService.getBoardContent(page_number));

    return "board/content";
  }

  /**
   * 게시글 수정
   */
  @GetMapping("/boardUpdate")
  public String getBoardUpdate(Model model, BoardDto dto,
                                @RequestParam(value = "page_number", required = true) int page_number) {

    model.addAttribute("content", boardService.getBoardContent(page_number));

    return "board/content_update";
  }

  @PostMapping("/boardUpdate")
  public String postBoardUpdate(BoardDto dto) {

    boardService.boardUpdate(dto);

    return "redirect:/boardContent?" + dto.getPage_number();
  }
  /**
   * 게시글 삭제
   */
  @GetMapping("/boardDelete")
  public String getBoardDelete(BoardDto dto,
                               @RequestParam(value = "page_number", required = true) int page_number) {

    boardService.delete(page_number);

    return "redirect:/notice";
  }

}
